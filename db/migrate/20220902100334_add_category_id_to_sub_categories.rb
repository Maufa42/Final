class AddCategoryIdToSubCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :subcategories, :category_id, :integer
  end
end
