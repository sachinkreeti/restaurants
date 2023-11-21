json.extract! reservation_guest, :id, :reservation_id, :guest_name, :contact_number, :email, :created_at, :updated_at
json.url reservation_guest_url(reservation_guest, format: :json)
