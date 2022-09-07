class Subcategory < ApplicationRecord
  # belongs_to :category
  # has_and_belongs_to_many :categories
  has_many :categorysubcategories
  has_many :categories,through: :categorysubcategories, class_name: "Categorysubcategory", foreign_key: 'category_id'
  has_many :childs
  has_many :bookings

  after_create do
    product=Stripe::Product.create(name: name)
    price = Stripe::Price.create(product: product,unit_amount: self.price.to_i*100,currency:"inr")
    update(stripe_product_id: product.id,stripe_price_id: price.id)
 end
 
end
