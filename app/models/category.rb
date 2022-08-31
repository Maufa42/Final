class Category < ApplicationRecord
  belongs_to :event
  has_many :subcategories
end
