class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
    @categories = Category.find(params[:category_id])
    @event = @categories.event
    @events = @event.id
    @eventVendor = @event.vendors
    # debugger
    # @v = Vendor.find()
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create!(vendor_params)
    # respond_to do |format|
    if @vendor.save
      flash[:notice] = "Account Created Successfully"
      redirect_to root_path
      # format.js
    else
      flash[:alert] = "Not Created Account"
      redirect_to root_path
    end

  end

  def show
    
    @v = Event.find_by(id: params[:id])
    # debugger
  end

  private

  def vendor_params
    params.require(:vendor).permit(:doc,:description,:address,:phone,:nearest_landmark,:email,:website,:established_in, :user_id)
  end


end

