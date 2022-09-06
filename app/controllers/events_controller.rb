class EventsController < ApplicationController
  
  def index
    @events = Event.all;
    
    # @event = Event.where(parent_id: params[:parent_id]).to_a
 


  end
end