class HomesController < ApplicationController
  before_action :set_vendor

  def index
    # debugger
    @booking = Booking.all
    @vendor
    @event = Event.all
  end

  private

  def set_vendor
    if(user_signed_in? && current_user.role == "vendor")
      @vendor = Vendor.find_by(:user_id => current_user.id)
    end
  end


end
