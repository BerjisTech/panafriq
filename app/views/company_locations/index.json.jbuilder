# frozen_string_literal: true

json.array! @company_locations, partial: 'company_locations/company_location', as: :company_location
