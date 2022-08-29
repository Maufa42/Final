class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :vendor
  belongs_to :user
end
