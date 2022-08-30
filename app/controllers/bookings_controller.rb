class BookingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @booking 
  end

  def create
    # debugger    
    @booking = Booking.create(booking_params)
      debugger
    if @booking.save
      redirect_to  
    else
      render :new 
    end
  end

  def show
  end
    
  private
    def booking_params
      params.permit(:user_id,:event_id,:vendor_id)
    end

end
