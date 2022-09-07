class AddFieldToSubcategory < ActiveRecord::Migration[6.1]
  def change
    add_column :subcategories, :stripe_product_id, :string
    add_column :subcategories, :stripe_price_id, :string
  end
end
