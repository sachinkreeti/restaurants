json.extract! order, :id, :restaurant_id, :order_date, :total_amount, :created_at, :updated_at
json.url order_url(order, format: :json)
