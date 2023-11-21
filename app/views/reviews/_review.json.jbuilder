json.extract! review, :id, :restaurant_id, :content, :rating, :user_name, :created_at, :updated_at
json.url review_url(review, format: :json)
