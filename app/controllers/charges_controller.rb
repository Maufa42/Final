class ChargesController < ApplicationController
  
  
  def new
  end

  def create
    @amount = 5000  

    customer = Stripe::Customer.create({

      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  end
end
