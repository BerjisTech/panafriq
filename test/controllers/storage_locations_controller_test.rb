require "test_helper"

class StorageLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storage_location = storage_locations(:one)
  end

  test "should get index" do
    get storage_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_storage_location_url
    assert_response :success
  end

  test "should create storage_location" do
    assert_difference("StorageLocation.count") do
      post storage_locations_url, params: { storage_location: { name: @storage_location.name, products: @storage_location.products, services: @storage_location.services, storage_id: @storage_location.storage_id, storage_price: @storage_location.storage_price, storage_size: @storage_location.storage_size, storage_type: @storage_location.storage_type, user_id: @storage_location.user_id } }
    end

    assert_redirected_to storage_location_url(StorageLocation.last)
  end

  test "should show storage_location" do
    get storage_location_url(@storage_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_storage_location_url(@storage_location)
    assert_response :success
  end

  test "should update storage_location" do
    patch storage_location_url(@storage_location), params: { storage_location: { name: @storage_location.name, products: @storage_location.products, services: @storage_location.services, storage_id: @storage_location.storage_id, storage_price: @storage_location.storage_price, storage_size: @storage_location.storage_size, storage_type: @storage_location.storage_type, user_id: @storage_location.user_id } }
    assert_redirected_to storage_location_url(@storage_location)
  end

  test "should destroy storage_location" do
    assert_difference("StorageLocation.count", -1) do
      delete storage_location_url(@storage_location)
    end

    assert_redirected_to storage_locations_url
  end
end
