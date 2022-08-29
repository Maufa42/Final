class CreateEventVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :event_vendors do |t|
      t.references :event, null: false, foreign_key: true
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
