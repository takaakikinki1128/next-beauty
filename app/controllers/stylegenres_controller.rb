class StylegenresController < ApplicationController
  def show
    genre = Stylegenre.find(params[:id])
    @name = genre.name
    @products = genre.products.page(params[:page]).per(9).order("created_at DESC")
  end

  def search
  end

  def index
    @genres = Stylegenre.where('name LIKE(?)',"%#{params[:keyword]}%").limit(15)

    respond_to do |format|
      format.html
      format.json
    end
  end
  
end
