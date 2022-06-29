# frozen_string_literal: true

json.extract! company, :id, :user_id, :name, :locations, :products, :services, :staff, :created_at, :updated_at
json.url company_url(company, format: :json)
