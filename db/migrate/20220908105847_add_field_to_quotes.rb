class AddFieldToQuotes < ActiveRecord::Migration[6.1]
  def change
    add_column :quotes, :event_id, :integer
  end
end
