# frozen_string_literal: true

require 'test_helper'

class StaffDesignationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff_designation = staff_designations(:one)
  end

  test 'should get index' do
    get staff_designations_url
    assert_response :success
  end

  test 'should get new' do
    get new_staff_designation_url
    assert_response :success
  end

  test 'should create staff_designation' do
    assert_difference('StaffDesignation.count') do
      post staff_designations_url, params: { staff_designation: { name: @staff_designation.name } }
    end

    assert_redirected_to staff_designation_url(StaffDesignation.last)
  end

  test 'should show staff_designation' do
    get staff_designation_url(@staff_designation)
    assert_response :success
  end

  test 'should get edit' do
    get edit_staff_designation_url(@staff_designation)
    assert_response :success
  end

  test 'should update staff_designation' do
    patch staff_designation_url(@staff_designation), params: { staff_designation: { name: @staff_designation.name } }
    assert_redirected_to staff_designation_url(@staff_designation)
  end

  test 'should destroy staff_designation' do
    assert_difference('StaffDesignation.count', -1) do
      delete staff_designation_url(@staff_designation)
    end

    assert_redirected_to staff_designations_url
  end
end
