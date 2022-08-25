class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :phone
      t.float :rating
      t.string :nearest_landmark
        
      t.string   "email"
      t.string   "website"
      t.string   "established_in"


      t.timestamps
    end
  end
end
