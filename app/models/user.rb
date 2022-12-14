class User < ApplicationRecord
  # include Pay::Billable
  # pay_customer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and 
  attr_accessor :role

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  after_create :set_stripe_id

  # after_update :crop_image
  after_update :crop_image, if: :image_present


  validates :email,:fname,:lname,:dob, presence: true
  has_many :vendors
  has_many :bookings, dependent: :destroy
  devise :database_authenticatable,:omniauthable, :registerable,
         :recoverable, :rememberable, :validatable
         
  mount_uploader :image, ImageUploader
  
  enum role: {"user"=>0, "vendor"=>1, "admin"=>2}

  def crop_image 
    binding.pry
    image.recreate_versions! if crop_x.present? && self.image.size > 0
  end

  def image_present
    self.image.size > 0
  end


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


  private
  def set_stripe_id
    debugger
    if self.role == 'user'
      customer = Stripe::Customer.create(email:email, name:fname)
      self.update(stripe_customer_id: customer.id)
    end
  end


end
