class ChildsController < ApplicationController

  def index
    @subcategory = Subcategory.find(params[:subcategory_id])
    @child = @subcategory.childs
  end

  def show
    
  end

  def new
  end

  

end