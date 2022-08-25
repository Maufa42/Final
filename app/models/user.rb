class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one_attached :Profile_Picture
         has_one_attached :doc
  enum role: {"user"=>0, "vendor"=>1, "admin"=>2}
end
