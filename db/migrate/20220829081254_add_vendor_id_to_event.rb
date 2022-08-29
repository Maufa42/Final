class AddVendorIdToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :vendor_id, :integer
  end
end
