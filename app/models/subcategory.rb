class Subcategory < ApplicationRecord
  # belongs_to :category
  # has_and_belongs_to_many :categories
  has_many :categorysubcategories
  has_many :categories,through: :categorysubcategories, class_name: "Categorysubcategory", foreign_key: 'category_id'
  has_many :childs

end
