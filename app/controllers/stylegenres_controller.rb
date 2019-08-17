class StylegenresController < ApplicationController
  def show
    
  end

  def search
  end

  def index
    @styles = Stylegenre.where('name LIKE(?)',"%#{params[:keyword]}%").limit(15)
    respond_to do |format|
      format.html
      format.json
    end
  end
end
