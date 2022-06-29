# frozen_string_literal: true

json.extract! staff_designation, :id, :name, :created_at, :updated_at
json.url staff_designation_url(staff_designation, format: :json)
