class DropCategoriesjsubs < ActiveRecord::Migration[6.1]
  def change
    drop_table :categoriesjsubs
  end
end
