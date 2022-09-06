class AddAttributeToSubcategories < ActiveRecord::Migration[6.1]
  def change
    add_column :subcategories, :price, :integer
  end
end
