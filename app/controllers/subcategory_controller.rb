class SubcategoryController < ApplicationController

  def index
    @category = Category.find(params[:id])
    @subcatego = @category.subcategories
  end

  def show

  end

  def new
  end

  

end