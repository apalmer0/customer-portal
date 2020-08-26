json.extract! order, :id, :work_order, :account_name, :equipment_type, :make, :model, :serial, :ship_date, :purchase_order, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
