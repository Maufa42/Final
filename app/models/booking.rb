class Booking < ApplicationRecord
  validates :place,:event_date,presence: true
  # validates_uniqueness_of :event_date, :on => :message => "must be unique"
 
  belongs_to :event 
  belongs_to :vendor
  belongs_to :user
  belongs_to :subcategory
  belongs_to :category
end
