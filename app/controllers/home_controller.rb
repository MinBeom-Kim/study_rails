class HomeController < ApplicationController
  def index
    @categories = Category.all
    @studies = Study.all
    # @category = Category.find(params[:category_id])
    # @study = Study.find(params[:studies_id])
    
  
  end

  def show
  end
end
