class EventsController < ApplicationController
  
  def index
    @events = Event.all;


    # @event = Event.where(parent_id: params[:parent_id]).to_a
    # respond_to do |format|
    #   format.js
    # end

  end
end