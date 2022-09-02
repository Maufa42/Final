class RemoveParentIdFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :parent_id, :integer
  end
end
