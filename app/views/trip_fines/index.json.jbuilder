# frozen_string_literal: true

json.array! @trip_fines, partial: 'trip_fines/trip_fine', as: :trip_fine
