json.extract! storage_staff, :id, :user_id, :storage_id, :invited_on, :joined_on, :is_active, :left_on, :reason_for_leaving, :staff_designation, :invited_by, :created_at, :updated_at
json.url storage_staff_url(storage_staff, format: :json)
