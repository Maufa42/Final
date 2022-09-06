class HomesController < ApplicationController
  # before_action :set_vendor

  def index
    @booking = Booking.all
    @vendor = Vendor.first
  end

  


end
