class CheckoutsController < ApplicationController

  def create
    @subcategory = Subcategory.find(params[:id])
    @session = Stripe::Checkout::Session.create({
      mode: 'payment',
      # Remove the payment_method_types parameter
      # to manage payment methods in the Dashboard
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
        # The currency parameter determines which
        # payment methods are used in the Checkout Session.
          currency: 'inr',
            product_data: {
              name: @subcategory.name,
            },
            unit_amount: @subcategory.price,
          },
          quantity: 1,
        }],
        success_url: root_url,
        cancel_url: root_url,
      })
      respond_to do |format|
        format.js
      end

  end

  def show
  end


end

