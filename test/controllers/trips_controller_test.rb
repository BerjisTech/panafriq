# frozen_string_literal: true

require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test 'should get index' do
    get trips_url
    assert_response :success
  end

  test 'should get new' do
    get new_trip_url
    assert_response :success
  end

  test 'should create trip' do
    assert_difference('Trip.count') do
      post trips_url,
           params: { trip: { arrival_time: @trip.arrival_time, customer_pay: @trip.customer_pay, departure: @trip.departure,
                             departure_time: @trip.departure_time, destination: @trip.destination, driver_cut: @trip.driver_cut, driver_id: @trip.driver_id, final_truck_pay: @trip.final_truck_pay, fine: @trip.fine, goods_status: @trip.goods_status, trip_date: @trip.trip_date, truck_id: @trip.truck_id, trucker_pay: @trip.trucker_pay } }
    end

    assert_redirected_to trip_url(Trip.last)
  end

  test 'should show trip' do
    get trip_url(@trip)
    assert_response :success
  end

  test 'should get edit' do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test 'should update trip' do
    patch trip_url(@trip),
          params: { trip: { arrival_time: @trip.arrival_time, customer_pay: @trip.customer_pay, departure: @trip.departure,
                            departure_time: @trip.departure_time, destination: @trip.destination, driver_cut: @trip.driver_cut, driver_id: @trip.driver_id, final_truck_pay: @trip.final_truck_pay, fine: @trip.fine, goods_status: @trip.goods_status, trip_date: @trip.trip_date, truck_id: @trip.truck_id, trucker_pay: @trip.trucker_pay } }
    assert_redirected_to trip_url(@trip)
  end

  test 'should destroy trip' do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip)
    end

    assert_redirected_to trips_url
  end
end
