class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.date :date
      t.integer :budget
      t.integer :guest
      t.text :comment

      t.timestamps
    end
  end
end
