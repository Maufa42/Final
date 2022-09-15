class ChildsController < ApplicationController

  def index
    @subcategory = Subcategory.find(params[:subcategory_id])
    @child = @subcategory.childs
    respond_to do |format|
      format.js
    end
  end

  def show
    
  end

  def new
  end

  

end