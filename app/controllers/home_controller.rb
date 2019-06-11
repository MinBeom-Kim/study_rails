class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @categories = Category.all
    @studies = Study.all
  end

  def show
  end

end
