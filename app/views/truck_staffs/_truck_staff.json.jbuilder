json.extract! truck_staff, :id, :user_id, :trucker_id, :invited_on, :joined_on, :is_active, :left_on, :reason_for_leaving, :staff_designation, :invited_by, :created_at, :updated_at
json.url truck_staff_url(truck_staff, format: :json)
