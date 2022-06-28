require "application_system_test_case"

class StorageLocationsTest < ApplicationSystemTestCase
  setup do
    @storage_location = storage_locations(:one)
  end

  test "visiting the index" do
    visit storage_locations_url
    assert_selector "h1", text: "Storage locations"
  end

  test "should create storage location" do
    visit storage_locations_url
    click_on "New storage location"

    fill_in "Name", with: @storage_location.name
    fill_in "Products", with: @storage_location.products
    fill_in "Services", with: @storage_location.services
    fill_in "Storage", with: @storage_location.storage_id
    fill_in "Storage price", with: @storage_location.storage_price
    fill_in "Storage size", with: @storage_location.storage_size
    fill_in "Storage type", with: @storage_location.storage_type
    fill_in "User", with: @storage_location.user_id
    click_on "Create Storage location"

    assert_text "Storage location was successfully created"
    click_on "Back"
  end

  test "should update Storage location" do
    visit storage_location_url(@storage_location)
    click_on "Edit this storage location", match: :first

    fill_in "Name", with: @storage_location.name
    fill_in "Products", with: @storage_location.products
    fill_in "Services", with: @storage_location.services
    fill_in "Storage", with: @storage_location.storage_id
    fill_in "Storage price", with: @storage_location.storage_price
    fill_in "Storage size", with: @storage_location.storage_size
    fill_in "Storage type", with: @storage_location.storage_type
    fill_in "User", with: @storage_location.user_id
    click_on "Update Storage location"

    assert_text "Storage location was successfully updated"
    click_on "Back"
  end

  test "should destroy Storage location" do
    visit storage_location_url(@storage_location)
    click_on "Destroy this storage location", match: :first

    assert_text "Storage location was successfully destroyed"
  end
end
