class CheckoutsController < ApplicationController
  require 'stripe'
  Stripe.api_key = "sk_test_51Lc7P8SJHDpvMc8aBXK3kQudvsB1OhpKlz3T5iEPLGHjTECaIets4uq9u93vNQIRec61lUMnAHe1GmlLipOcRWe100uB5wAXLC"
  before_action :authenticate_user!

  def new
  end



  def create
    
    @session = Stripe::Checkout::Session.create({
      success_url: root_url,
      cancel_url: bookings_url,
      payment_method_types: ['card'],
      line_items.price => 2000,

      mode: 'payment',
      metadata: {post_id: current_user.id},
      customer_email: current_user.email
    })
  
    respond_to do |format|
      format.js
    end

  end

  def show
  end


end