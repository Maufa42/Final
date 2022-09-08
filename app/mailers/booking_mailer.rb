class BookingMailer < ApplicationMailer
  
  def booking_created(params)
    @booking = params
    @greeting = "HI"
    @email_user = @booking.user.email
    @email_vendor = @booking.vendor.user.email
    mail to: @email_user
    mail to: @email_vendor
  end

end
