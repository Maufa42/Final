class RemoveVendorIdFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :vendor_id, :integer
  end
end
