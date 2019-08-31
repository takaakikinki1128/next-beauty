class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @products = user.products.includes(:user).page(params[:page]).per(9).order("created_at DESC")
  end

  def search
  end

  def index
    @users = User.where('nickname LIKE(?)',"%#{params[:keyword]}%").limit(15)

    respond_to do |format|
      format.html
      format.json
    end
  end
end
