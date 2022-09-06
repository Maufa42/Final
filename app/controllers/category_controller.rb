class CategoryController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @category   = @event.categories
  end

  def show

  end
  

end