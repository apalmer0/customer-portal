class AddCompanyToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :company_id, :integer
    add_foreign_key :orders, :companies
  end
end
