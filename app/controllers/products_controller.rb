class ProductsController < ApplicationController
  def index
    @products = Product.includes(:user).order("created_at DESC")    

    @bob_style =  Product.where(stylegenre_id: 1).order("id DESC").limit(4)
    @short_style = Product.where(stylegenre_id: 2).order("id DESC").limit(4)
    @mid_style = Product.where(stylegenre_id: 3).order("id DESC").limit(4)
    @semlong_style = Product.where(stylegenre_id: 4).order("id DESC").limit(4)
    @long_style = Product.where(stylegenre_id: 5).order("id DESC").limit(4)
    @superlong_style = Product.where(stylegenre_id: 6).order("id DESC").limit(4)
    @hairset_style = Product.where(stylegenre_id: 7).order("id DESC").limit(4)
    
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
      product.update(shop_name:product_params[:shop_name],video:product_params[:video],text:product_params[:text],item_id:product_params[:item_id],cosme:product_params[:cosme],stylegenre_id:params[:stylegenre_id],color_id:params[:color_id],perm_id:params[:perm_id],user_id: current_user.id)
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
    @stylegenre = Stylegenre.find(@product.stylegenre_id)


  end

  private

  def product_params
    params.require(:product).permit(:shop_name,:video,:text,:stylest_name,:cosme).merge(stylegenre_id:params[:stylegenre_id],color_id:params[:color_id],perm_id:params[:perm_id],item_id: params[:item_id],user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
