# frozen_string_literal: true

require 'application_system_test_case'

class TruckStaffsTest < ApplicationSystemTestCase
  setup do
    @truck_staff = truck_staffs(:one)
  end

  test 'visiting the index' do
    visit truck_staffs_url
    assert_selector 'h1', text: 'Truck staffs'
  end

  test 'should create truck staff' do
    visit truck_staffs_url
    click_on 'New truck staff'

    fill_in 'Invited by', with: @truck_staff.invited_by
    fill_in 'Invited on', with: @truck_staff.invited_on
    check 'Is active' if @truck_staff.is_active
    fill_in 'Joined on', with: @truck_staff.joined_on
    fill_in 'Left on', with: @truck_staff.left_on
    fill_in 'Reason for leaving', with: @truck_staff.reason_for_leaving
    fill_in 'Staff designation', with: @truck_staff.staff_designation
    fill_in 'Trucker', with: @truck_staff.trucker_id
    fill_in 'User', with: @truck_staff.user_id
    click_on 'Create Truck staff'

    assert_text 'Truck staff was successfully created'
    click_on 'Back'
  end

  test 'should update Truck staff' do
    visit truck_staff_url(@truck_staff)
    click_on 'Edit this truck staff', match: :first

    fill_in 'Invited by', with: @truck_staff.invited_by
    fill_in 'Invited on', with: @truck_staff.invited_on
    check 'Is active' if @truck_staff.is_active
    fill_in 'Joined on', with: @truck_staff.joined_on
    fill_in 'Left on', with: @truck_staff.left_on
    fill_in 'Reason for leaving', with: @truck_staff.reason_for_leaving
    fill_in 'Staff designation', with: @truck_staff.staff_designation
    fill_in 'Trucker', with: @truck_staff.trucker_id
    fill_in 'User', with: @truck_staff.user_id
    click_on 'Update Truck staff'

    assert_text 'Truck staff was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Truck staff' do
    visit truck_staff_url(@truck_staff)
    click_on 'Destroy this truck staff', match: :first

    assert_text 'Truck staff was successfully destroyed'
  end
end
