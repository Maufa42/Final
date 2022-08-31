class RemoveAncestryFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_index :categories, :ancestry
    remove_column :categories, :ancestry, :string
  end
end
