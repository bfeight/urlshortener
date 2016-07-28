class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    end
  end


  def edit
  end

  def new
  end

  def show
    @url = Category.find(params[:id])
    redirect_to "http://#{@url.url}"
  end

  private

  def category_params
    params.require(:category).permit(:url)
  end
end
