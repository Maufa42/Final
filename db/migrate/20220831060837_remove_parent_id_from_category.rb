class RemoveParentIdFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :parent_id, :integer
  end
end
