class Vendor < ApplicationRecord
  belongs_to :user
  
  has_many :bookings, dependent: :destroy
  # has_many :events
  has_many :EventVendors
  has_many :events, through: :EventVendors

  validates :description,:address,:phone,:nearest_landmark,:website,:established_in, presence: true
  validates :user_id, uniqueness: true 
end
