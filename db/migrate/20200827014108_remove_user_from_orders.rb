class RemoveUserFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :orders, :users
    remove_column :orders, :user_id, :bigint
  end
end
