class ProductsController < ApplicationController
  def index
    @products = Product.includes(:user).order("created_at DESC")    
  end

  def new 
    @product = Product.new
  end

  def create
    Product.create(style_name:product_params[:style_name],shop_name:product_params[:shop_name],image:product_params[:image],video:product_params[:video],text:product_params[:text],user_id: current_user.id)
  end

  def edit
    @product = Product.find(params[:id])

  end

  def update
    product = Product.find(params[:id])
    if product.user_id == current_user.id
      product.update(style_name:product_params[:style_name],shop_name:product_params[:shop_name],image:product_params[:image],video:product_params[:video],text:product_params[:text],user_id: current_user.id)
    end
  end

  def destroy
    product = Product.find(params[:id])
    if product.user_id == current_user.id
      product.delete
      redirect_to root_path
    end
  end

  def show
    @product = Product.find(params[:id])

  end

  private

  def product_params
    params.require(:product).permit(:style_name,:shop_name,:image,:video,:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
