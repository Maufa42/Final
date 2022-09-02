class CategoryController < ApplicationController

  def index
    @event = Event.find(params[:id])
    @category   = @event.categories
  end

  def show

  end
  

end