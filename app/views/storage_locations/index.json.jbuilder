# frozen_string_literal: true

json.array! @storage_locations, partial: 'storage_locations/storage_location', as: :storage_location
