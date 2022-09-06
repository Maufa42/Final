class BookingsController < ApplicationController
  # before_action :authenticate_user! , :[:create,:new]
  skip_before_action :verify_authenticity_token, only: [:create, :destroy]
  def index
    @bookings = Booking.all

    @user_booking = current_user.bookings.to_a
    binding.pry
  end

  def new
    # binding.pry
    @booking = Booking.new(booking_params)
  end

  def create
    # @user = current_user
    debugger
    @booking = Booking.new
    @booking.vendor_id= params.require(:booking).fetch(:vendor_id)
    @booking.user_id= params.require(:booking).fetch(:user_id)
    @booking.event_id= params.require(:booking).fetch(:event_id)
    @booking.place=params.require(:booking).fetch(:place)
    @booking.event_date= params.require(:booking).fetch(:event_date)
    @booking.category_id= params.require(:booking).fetch(:category_id)
    @booking.subcategory_id= params.require(:booking).fetch(:subcategory_id)

    # binding.pry
    if @booking.save
      redirect_to bookings_url
    else
      render :new 
    end
  end

  def show
    # debugger
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    

    if @booking.destroy
      redirect_to root_path
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end


  def update
    @booking =Booking.find(params[:id])
    @booking.place=params.require(:booking).fetch(:place)
    @booking.event_date= params.require(:booking).fetch(:event_date)
    @booking.event_date= params.require(:booking).fetch(:category_id)
    @booking.event_date= params.require(:booking).fetch(:subcategory_id)

    if @booking.update(booking_params)
      redirect_to root_path
    else
      render :edit,status: :unprocessable_entity
    end
  end
    
  private
    def booking_params
      params.permit(:user_id,:event_id,:vendor_id,:event_date,:place,:category_id, :subcategory_id)
    end

end
