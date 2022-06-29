# frozen_string_literal: true

require 'application_system_test_case'

class TruckersTest < ApplicationSystemTestCase
  setup do
    @trucker = truckers(:one)
  end

  test 'visiting the index' do
    visit truckers_url
    assert_selector 'h1', text: 'Truckers'
  end

  test 'should create trucker' do
    visit truckers_url
    click_on 'New trucker'

    fill_in 'Country', with: @trucker.country
    fill_in 'Drivers', with: @trucker.drivers
    check 'Is company' if @trucker.is_company
    fill_in 'Truck staff', with: @trucker.truck_staff
    fill_in 'User', with: @trucker.user_id
    click_on 'Create Trucker'

    assert_text 'Trucker was successfully created'
    click_on 'Back'
  end

  test 'should update Trucker' do
    visit trucker_url(@trucker)
    click_on 'Edit this trucker', match: :first

    fill_in 'Country', with: @trucker.country
    fill_in 'Drivers', with: @trucker.drivers
    check 'Is company' if @trucker.is_company
    fill_in 'Truck staff', with: @trucker.truck_staff
    fill_in 'User', with: @trucker.user_id
    click_on 'Update Trucker'

    assert_text 'Trucker was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Trucker' do
    visit trucker_url(@trucker)
    click_on 'Destroy this trucker', match: :first

    assert_text 'Trucker was successfully destroyed'
  end
end
