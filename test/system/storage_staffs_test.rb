# frozen_string_literal: true

require 'application_system_test_case'

class StorageStaffsTest < ApplicationSystemTestCase
  setup do
    @storage_staff = storage_staffs(:one)
  end

  test 'visiting the index' do
    visit storage_staffs_url
    assert_selector 'h1', text: 'Storage staffs'
  end

  test 'should create storage staff' do
    visit storage_staffs_url
    click_on 'New storage staff'

    fill_in 'Invited by', with: @storage_staff.invited_by
    fill_in 'Invited on', with: @storage_staff.invited_on
    check 'Is active' if @storage_staff.is_active
    fill_in 'Joined on', with: @storage_staff.joined_on
    fill_in 'Left on', with: @storage_staff.left_on
    fill_in 'Reason for leaving', with: @storage_staff.reason_for_leaving
    fill_in 'Staff designation', with: @storage_staff.staff_designation
    fill_in 'Storage', with: @storage_staff.storage_id
    fill_in 'User', with: @storage_staff.user_id
    click_on 'Create Storage staff'

    assert_text 'Storage staff was successfully created'
    click_on 'Back'
  end

  test 'should update Storage staff' do
    visit storage_staff_url(@storage_staff)
    click_on 'Edit this storage staff', match: :first

    fill_in 'Invited by', with: @storage_staff.invited_by
    fill_in 'Invited on', with: @storage_staff.invited_on
    check 'Is active' if @storage_staff.is_active
    fill_in 'Joined on', with: @storage_staff.joined_on
    fill_in 'Left on', with: @storage_staff.left_on
    fill_in 'Reason for leaving', with: @storage_staff.reason_for_leaving
    fill_in 'Staff designation', with: @storage_staff.staff_designation
    fill_in 'Storage', with: @storage_staff.storage_id
    fill_in 'User', with: @storage_staff.user_id
    click_on 'Update Storage staff'

    assert_text 'Storage staff was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Storage staff' do
    visit storage_staff_url(@storage_staff)
    click_on 'Destroy this storage staff', match: :first

    assert_text 'Storage staff was successfully destroyed'
  end
end
