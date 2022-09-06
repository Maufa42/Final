class Booking < ApplicationRecord
  belongs_to :event 
  belongs_to :vendor
  belongs_to :user
  belongs_to :subcategory
  belongs_to :category
end
