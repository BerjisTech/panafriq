# frozen_string_literal: true

require 'test_helper'

class TruckStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_staff = truck_staffs(:one)
  end

  test 'should get index' do
    get truck_staffs_url
    assert_response :success
  end

  test 'should get new' do
    get new_truck_staff_url
    assert_response :success
  end

  test 'should create truck_staff' do
    assert_difference('TruckStaff.count') do
      post truck_staffs_url,
           params: { truck_staff: { invited_by: @truck_staff.invited_by, invited_on: @truck_staff.invited_on,
                                    is_active: @truck_staff.is_active, joined_on: @truck_staff.joined_on, left_on: @truck_staff.left_on, reason_for_leaving: @truck_staff.reason_for_leaving, staff_designation: @truck_staff.staff_designation, trucker_id: @truck_staff.trucker_id, user_id: @truck_staff.user_id } }
    end

    assert_redirected_to truck_staff_url(TruckStaff.last)
  end

  test 'should show truck_staff' do
    get truck_staff_url(@truck_staff)
    assert_response :success
  end

  test 'should get edit' do
    get edit_truck_staff_url(@truck_staff)
    assert_response :success
  end

  test 'should update truck_staff' do
    patch truck_staff_url(@truck_staff),
          params: { truck_staff: { invited_by: @truck_staff.invited_by, invited_on: @truck_staff.invited_on,
                                   is_active: @truck_staff.is_active, joined_on: @truck_staff.joined_on, left_on: @truck_staff.left_on, reason_for_leaving: @truck_staff.reason_for_leaving, staff_designation: @truck_staff.staff_designation, trucker_id: @truck_staff.trucker_id, user_id: @truck_staff.user_id } }
    assert_redirected_to truck_staff_url(@truck_staff)
  end

  test 'should destroy truck_staff' do
    assert_difference('TruckStaff.count', -1) do
      delete truck_staff_url(@truck_staff)
    end

    assert_redirected_to truck_staffs_url
  end
end
