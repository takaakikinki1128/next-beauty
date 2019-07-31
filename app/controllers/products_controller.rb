class ProductsController < ApplicationController
  def index
    @products = Product.includes(:user).order("created_at DESC")    

  end

  def new 
    @product = Product.new


  end

  def create


    Product.create(product_params)
  end

  def edit
    @product = Product.find(params[:id])

  end

  def update
    product = Product.find(params[:id])
    if product.user_id == current_user.id
      product.update(style_name:product_params[:style_name],shop_name:product_params[:shop_name],image:product_params[:image],video:product_params[:video],text:product_params[:text],item_id:product_params[:item_id],user_id: current_user.id)
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
    @item = Item.find(@product.item_id)
    @color = Color.find(@product.color_id)
    @perm = Perm.find(@product.perm_id)


  end

  private

  def product_params

  
    params.require(:product).permit(:style_name,:shop_name,:image,:video,:text,:stylest_name).merge(color_id:params[:color_id],perm_id:params[:perm_id],item_id: params[:item_id],user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
