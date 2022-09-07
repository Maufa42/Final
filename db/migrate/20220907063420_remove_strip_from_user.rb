class RemoveStripFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :stripe_customer_id, :integer
  end
end
