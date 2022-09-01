class AddAttributeToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :event_date, :date
    add_column :bookings, :place, :string
  end
end
