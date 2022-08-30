class User < ApplicationRecord
  include Pay::Billable
  # pay_customer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and 
  has_many :vendors
  has_many :bookings
  devise :database_authenticatable,:omniauthable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one_attached :image
   
  enum role: {"user"=>0, "vendor"=>1, "admin"=>2}

  def self.from_omniauth(auth)
    
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.fname = auth.info.name   # assuming the user model has a name
      # user.image =s auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end


end
