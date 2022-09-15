class SubcategoryController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    # debugger
    @subcatego = @category.subcategories
    respond_to do |format|
    format.js
    end
  end

  def show

  end

  def new
  end

  

end