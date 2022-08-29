class Event < ApplicationRecord
    #  has_ancestry ancestry_column: :parent_id ## if you've used a different column name
    # belongs_to :vendor
    has_many :EventVendors
    has_many :vendors, through: :EventVendors
    has_many :bookings
end
