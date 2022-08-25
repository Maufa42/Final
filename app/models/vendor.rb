class Vendor < ApplicationRecord
  belongs_to :user
  has_one_attached :doc
end
