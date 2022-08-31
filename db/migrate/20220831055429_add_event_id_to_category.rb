class AddEventIdToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :event_id, :integer
  end
end
