class AddAttrToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :category, null: false, foreign_key: true
    add_reference :bookings, :subcategory, null: false, foreign_key: true
  end
end
