json.extract! truck, :id, :trucker_id, :truck_type, :truck_size, :truck_age, :trips, :number_plate, :registration_country, :available, :created_at, :updated_at
json.url truck_url(truck, format: :json)
