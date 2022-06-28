require "test_helper"

class DriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get drivers_url
    assert_response :success
  end

  test "should get new" do
    get new_driver_url
    assert_response :success
  end

  test "should create driver" do
    assert_difference("Driver.count") do
      post drivers_url, params: { driver: { invited_by: @driver.invited_by, invited_on: @driver.invited_on, is_active: @driver.is_active, joined_on: @driver.joined_on, left_on: @driver.left_on, reason_for_leaving: @driver.reason_for_leaving, staff_designation: @driver.staff_designation, trucker_id: @driver.trucker_id, user_id: @driver.user_id } }
    end

    assert_redirected_to driver_url(Driver.last)
  end

  test "should show driver" do
    get driver_url(@driver)
    assert_response :success
  end

  test "should get edit" do
    get edit_driver_url(@driver)
    assert_response :success
  end

  test "should update driver" do
    patch driver_url(@driver), params: { driver: { invited_by: @driver.invited_by, invited_on: @driver.invited_on, is_active: @driver.is_active, joined_on: @driver.joined_on, left_on: @driver.left_on, reason_for_leaving: @driver.reason_for_leaving, staff_designation: @driver.staff_designation, trucker_id: @driver.trucker_id, user_id: @driver.user_id } }
    assert_redirected_to driver_url(@driver)
  end

  test "should destroy driver" do
    assert_difference("Driver.count", -1) do
      delete driver_url(@driver)
    end

    assert_redirected_to drivers_url
  end
end
