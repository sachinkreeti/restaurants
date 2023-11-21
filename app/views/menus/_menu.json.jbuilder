json.extract! menu, :id, :restaurant_id, :dish_name, :price, :category, :created_at, :updated_at
json.url menu_url(menu, format: :json)
