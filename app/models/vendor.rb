class Vendor < ApplicationRecord
  belongs_to :user
  has_one_attached :doc
  
  validates :description,:address,:phone,:nearest_landmark,:website,:established_in, presence: true
end
