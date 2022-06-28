json.extract! staff, :id, :user_id, :company_id, :invited_on, :joined_on, :is_active, :left_on, :reason_for_leaving, :staff_designation, :invited_by, :created_at, :updated_at
json.url staff_url(staff, format: :json)
