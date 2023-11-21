json.extract! promotion, :id, :restaurant_id, :name, :start_date, :end_date, :discount_percentage, :created_at, :updated_at
json.url promotion_url(promotion, format: :json)
