class BookingsController < ApplicationController
  def index

  end

  def create
    debugger    
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to root_path
    else
      # debugger
      # debugger
      render :new 
    end
  end

  # def new
  #   @booking = Booking.new
  # end
    
  private
    def booking_params
      params.permit(:user_id,:event_id,:vendor_id)
    end

end
