# frozen_string_literal: true

json.extract! trucker, :id, :user_id, :is_company, :country, :truck_staff, :drivers, :created_at, :updated_at
json.url trucker_url(trucker, format: :json)
