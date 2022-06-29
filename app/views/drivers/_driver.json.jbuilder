# frozen_string_literal: true

json.extract! driver, :id, :user_id, :trucker_id, :invited_on, :joined_on, :is_active, :left_on, :reason_for_leaving,
              :staff_designation, :invited_by, :created_at, :updated_at
json.url driver_url(driver, format: :json)
