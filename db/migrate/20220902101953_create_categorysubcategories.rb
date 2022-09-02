class CreateCategorysubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categorysubcategories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :subcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
