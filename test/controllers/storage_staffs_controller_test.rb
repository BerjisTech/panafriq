require "test_helper"

class StorageStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storage_staff = storage_staffs(:one)
  end

  test "should get index" do
    get storage_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_storage_staff_url
    assert_response :success
  end

  test "should create storage_staff" do
    assert_difference("StorageStaff.count") do
      post storage_staffs_url, params: { storage_staff: { invited_by: @storage_staff.invited_by, invited_on: @storage_staff.invited_on, is_active: @storage_staff.is_active, joined_on: @storage_staff.joined_on, left_on: @storage_staff.left_on, reason_for_leaving: @storage_staff.reason_for_leaving, staff_designation: @storage_staff.staff_designation, storage_id: @storage_staff.storage_id, user_id: @storage_staff.user_id } }
    end

    assert_redirected_to storage_staff_url(StorageStaff.last)
  end

  test "should show storage_staff" do
    get storage_staff_url(@storage_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_storage_staff_url(@storage_staff)
    assert_response :success
  end

  test "should update storage_staff" do
    patch storage_staff_url(@storage_staff), params: { storage_staff: { invited_by: @storage_staff.invited_by, invited_on: @storage_staff.invited_on, is_active: @storage_staff.is_active, joined_on: @storage_staff.joined_on, left_on: @storage_staff.left_on, reason_for_leaving: @storage_staff.reason_for_leaving, staff_designation: @storage_staff.staff_designation, storage_id: @storage_staff.storage_id, user_id: @storage_staff.user_id } }
    assert_redirected_to storage_staff_url(@storage_staff)
  end

  test "should destroy storage_staff" do
    assert_difference("StorageStaff.count", -1) do
      delete storage_staff_url(@storage_staff)
    end

    assert_redirected_to storage_staffs_url
  end
end
