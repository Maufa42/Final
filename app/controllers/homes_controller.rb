class HomesController < ApplicationController


  def index
    @booking = Booking.all
  end
end
