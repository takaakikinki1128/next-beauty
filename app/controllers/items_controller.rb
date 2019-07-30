class ItemsController < ApplicationController
  def create
    Item.create(item_params)
   
  end

  private
  def item_params
    params.require(:item).permit(:name).merge(product_id: params[:product_id],user_id: current_user.id)
  end
end
