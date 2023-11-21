json.extract! employee, :id, :restaurant_id, :name, :position, :created_at, :updated_at
json.url employee_url(employee, format: :json)
