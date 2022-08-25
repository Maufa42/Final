class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and 
  has_many :vendors
  devise :database_authenticatable,:omniauthable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one_attached :Profile_Picture
   
  enum role: {"user"=>0, "vendor"=>1, "admin"=>2}
end
