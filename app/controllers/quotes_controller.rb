class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create(quote_params)
    event = Event.find_by(id: params.require(:quote).fetch(:event_id))
    # binding.pry
    if @quote.save
      event.vendors.each do |pass|
        # binding.pry
        QuoteMailer.invitation_create(pass,@quote).deliver_now!
      end
      flash[:notice] =  "Email Successfully Sent"
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  def quote_params
    params.require(:quote).permit(:name,:email,:phone,:date,:budget,:guest,:comment,:event_id)
  end

end
