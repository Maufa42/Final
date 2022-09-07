class CheckoutsController < ApplicationController

  def create
    @order=Booking.find(params[:booking_id])
    # @subcategory = Subcategory.find(params[:id])
    @session = Stripe::Checkout::Session.create({
      customer: current_user.stripe_customer_id,
      mode: 'payment',
      metadata:  {id: @order.id}, 
      # Remove the payment_method_types parameter
      # to manage payment methods in the Dashboard
      payment_method_types: ['card'],
      line_items: [{
        price: @order.subcategory.stripe_price_id,  
         quantity: 1
        }],
        success_url: bookings_url,
        cancel_url: root_url,
      })
      respond_to do |format|
        format.js
      end

  end

  def show
  end


end

