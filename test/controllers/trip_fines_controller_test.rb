require "test_helper"

class TripFinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_fine = trip_fines(:one)
  end

  test "should get index" do
    get trip_fines_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_fine_url
    assert_response :success
  end

  test "should create trip_fine" do
    assert_difference("TripFine.count") do
      post trip_fines_url, params: { trip_fine: { fine: @trip_fine.fine, price: @trip_fine.price, trip_id: @trip_fine.trip_id } }
    end

    assert_redirected_to trip_fine_url(TripFine.last)
  end

  test "should show trip_fine" do
    get trip_fine_url(@trip_fine)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_fine_url(@trip_fine)
    assert_response :success
  end

  test "should update trip_fine" do
    patch trip_fine_url(@trip_fine), params: { trip_fine: { fine: @trip_fine.fine, price: @trip_fine.price, trip_id: @trip_fine.trip_id } }
    assert_redirected_to trip_fine_url(@trip_fine)
  end

  test "should destroy trip_fine" do
    assert_difference("TripFine.count", -1) do
      delete trip_fine_url(@trip_fine)
    end

    assert_redirected_to trip_fines_url
  end
end
