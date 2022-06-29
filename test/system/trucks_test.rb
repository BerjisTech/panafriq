# frozen_string_literal: true

require 'application_system_test_case'

class TrucksTest < ApplicationSystemTestCase
  setup do
    @truck = trucks(:one)
  end

  test 'visiting the index' do
    visit trucks_url
    assert_selector 'h1', text: 'Trucks'
  end

  test 'should create truck' do
    visit trucks_url
    click_on 'New truck'

    check 'Available' if @truck.available
    fill_in 'Number plate', with: @truck.number_plate
    fill_in 'Registration country', with: @truck.registration_country
    fill_in 'Trips', with: @truck.trips
    fill_in 'Truck age', with: @truck.truck_age
    fill_in 'Truck size', with: @truck.truck_size
    fill_in 'Truck type', with: @truck.truck_type
    fill_in 'Trucker', with: @truck.trucker_id
    click_on 'Create Truck'

    assert_text 'Truck was successfully created'
    click_on 'Back'
  end

  test 'should update Truck' do
    visit truck_url(@truck)
    click_on 'Edit this truck', match: :first

    check 'Available' if @truck.available
    fill_in 'Number plate', with: @truck.number_plate
    fill_in 'Registration country', with: @truck.registration_country
    fill_in 'Trips', with: @truck.trips
    fill_in 'Truck age', with: @truck.truck_age
    fill_in 'Truck size', with: @truck.truck_size
    fill_in 'Truck type', with: @truck.truck_type
    fill_in 'Trucker', with: @truck.trucker_id
    click_on 'Update Truck'

    assert_text 'Truck was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Truck' do
    visit truck_url(@truck)
    click_on 'Destroy this truck', match: :first

    assert_text 'Truck was successfully destroyed'
  end
end
