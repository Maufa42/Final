class RemoveAttributeFromVendors < ActiveRecord::Migration[6.1]
  def change
    remove_column :vendors, :name, :string
    remove_column :vendors, :rating, :float
    remove_column :vendors, :email, :string
  end
end
