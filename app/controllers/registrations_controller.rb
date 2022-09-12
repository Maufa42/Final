class RegistrationsController < Devise::RegistrationsController
  def index 
      @users=User.all
  end
  
  def show
      @user=User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
     @user = User.new(sign_up_params)
     if @user.save
      if params[:user][:image].present?
        render :crop
     else
      redirect_to root_path, notice: "Successfully Created User"
    end
  else
    render :new
  end
end

def edit
  @user = User.find(2)
end

def update
  @user = User.find(params[:user][:id])
  binding.pry
  if @user.update(account_update_params)
    if params[:user][:image].present?
      render :crop
      else
        redirect_to root_path, notice: "Successfully Updated User"
      end
    else
      render :edit
    end

  end

  def destroy
  @user = User.find(params[:user][:id])

    @user.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def sign_up_params
      params.require(:user).permit(:fname,:lname,:dob,:role,:image,:email,:password,:password_confirmation)
  end

  def sign_update_params
      params.require(:user).permit(:fname,:lname,:dob,:role,:image,:email, :password, :password_confirmation)
  end

  def account_update_params 
      params.require(:user).permit(:image,:crop_x, :crop_y, :crop_w, :crop_h)
  end

  end