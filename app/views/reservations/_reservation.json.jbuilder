json.extract! reservation, :id, :restaurant_id, :reservation_date, :party_size, :user_name, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
