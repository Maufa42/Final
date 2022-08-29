class RemoveEventIdFromVendor < ActiveRecord::Migration[6.1]
  def change
    remove_column :vendors, :event_id, :integer
  end
end
