class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(vendor_params)
    if @vendor.save
      flash[:notice] = "Account Created Successfully"
      redirect_to root_path
    else
      flash[:alert] = "Not Created Account"
      redirect_to root_path

    end
  end

  private

  def vendor_params
    params.require(:vendor).permit(:doc,:description,:address,:phone,:nearest_landmark,:email,:website,:established_in, :user_id)
  end


end

