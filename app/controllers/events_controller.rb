class EventsController < ApplicationControler
  def index
    @events = Event.all;
    @wedding_event = Event.where(parent_id: 2)
    @parties_event = Event.where(parent_id: 10)
    @corprate_event = Event.where(parent_id: 18)
    @corprate_event = Event.where(parent_id: 18)
    @festive_parties = Event.where(parent_id: 23)
  end
end