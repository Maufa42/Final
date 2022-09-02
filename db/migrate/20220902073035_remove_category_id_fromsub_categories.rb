class RemoveCategoryIdFromsubCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :subcategories, :category_id
  end
end
