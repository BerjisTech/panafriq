# frozen_string_literal: true

require 'application_system_test_case'

class DriversTest < ApplicationSystemTestCase
  setup do
    @driver = drivers(:one)
  end

  test 'visiting the index' do
    visit drivers_url
    assert_selector 'h1', text: 'Drivers'
  end

  test 'should create driver' do
    visit drivers_url
    click_on 'New driver'

    fill_in 'Invited by', with: @driver.invited_by
    fill_in 'Invited on', with: @driver.invited_on
    check 'Is active' if @driver.is_active
    fill_in 'Joined on', with: @driver.joined_on
    fill_in 'Left on', with: @driver.left_on
    fill_in 'Reason for leaving', with: @driver.reason_for_leaving
    fill_in 'Staff designation', with: @driver.staff_designation
    fill_in 'Trucker', with: @driver.trucker_id
    fill_in 'User', with: @driver.user_id
    click_on 'Create Driver'

    assert_text 'Driver was successfully created'
    click_on 'Back'
  end

  test 'should update Driver' do
    visit driver_url(@driver)
    click_on 'Edit this driver', match: :first

    fill_in 'Invited by', with: @driver.invited_by
    fill_in 'Invited on', with: @driver.invited_on
    check 'Is active' if @driver.is_active
    fill_in 'Joined on', with: @driver.joined_on
    fill_in 'Left on', with: @driver.left_on
    fill_in 'Reason for leaving', with: @driver.reason_for_leaving
    fill_in 'Staff designation', with: @driver.staff_designation
    fill_in 'Trucker', with: @driver.trucker_id
    fill_in 'User', with: @driver.user_id
    click_on 'Update Driver'

    assert_text 'Driver was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Driver' do
    visit driver_url(@driver)
    click_on 'Destroy this driver', match: :first

    assert_text 'Driver was successfully destroyed'
  end
end
