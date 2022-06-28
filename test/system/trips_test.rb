require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "should create trip" do
    visit trips_url
    click_on "New trip"

    fill_in "Arrival time", with: @trip.arrival_time
    fill_in "Customer pay", with: @trip.customer_pay
    fill_in "Departure", with: @trip.departure
    fill_in "Departure time", with: @trip.departure_time
    fill_in "Destination", with: @trip.destination
    fill_in "Driver cut", with: @trip.driver_cut
    fill_in "Driver", with: @trip.driver_id
    fill_in "Final truck pay", with: @trip.final_truck_pay
    fill_in "Fine", with: @trip.fine
    fill_in "Goods status", with: @trip.goods_status
    fill_in "Trip date", with: @trip.trip_date
    fill_in "Truck", with: @trip.truck_id
    fill_in "Trucker pay", with: @trip.trucker_pay
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "should update Trip" do
    visit trip_url(@trip)
    click_on "Edit this trip", match: :first

    fill_in "Arrival time", with: @trip.arrival_time
    fill_in "Customer pay", with: @trip.customer_pay
    fill_in "Departure", with: @trip.departure
    fill_in "Departure time", with: @trip.departure_time
    fill_in "Destination", with: @trip.destination
    fill_in "Driver cut", with: @trip.driver_cut
    fill_in "Driver", with: @trip.driver_id
    fill_in "Final truck pay", with: @trip.final_truck_pay
    fill_in "Fine", with: @trip.fine
    fill_in "Goods status", with: @trip.goods_status
    fill_in "Trip date", with: @trip.trip_date
    fill_in "Truck", with: @trip.truck_id
    fill_in "Trucker pay", with: @trip.trucker_pay
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "should destroy Trip" do
    visit trip_url(@trip)
    click_on "Destroy this trip", match: :first

    assert_text "Trip was successfully destroyed"
  end
end
