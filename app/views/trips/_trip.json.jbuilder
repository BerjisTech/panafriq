# frozen_string_literal: true

json.extract! trip, :id, :truck_id, :driver_id, :departure, :destination, :trip_date, :departure_time, :arrival_time,
              :goods_status, :customer_pay, :fine, :final_truck_pay, :trucker_pay, :driver_cut, :created_at, :updated_at
json.url trip_url(trip, format: :json)
