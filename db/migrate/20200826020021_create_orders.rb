class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :work_order
      t.string :account_name
      t.string :equipment_type
      t.string :make
      t.string :model
      t.string :serial
      t.date :ship_date
      t.string :purchase_order
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
