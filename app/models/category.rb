class Category < ApplicationRecord
  # has_and_belongs_to_many :subcategories
  has_many :categorysubcategories
  has_many :subcategories, through: :categorysubcategories
  belongs_to :event
end
