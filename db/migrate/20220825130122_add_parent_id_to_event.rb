class AddParentIdToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :parent_id, :integer
  end
end
