require "application_system_test_case"

class StorageTypesTest < ApplicationSystemTestCase
  setup do
    @storage_type = storage_types(:one)
  end

  test "visiting the index" do
    visit storage_types_url
    assert_selector "h1", text: "Storage types"
  end

  test "should create storage type" do
    visit storage_types_url
    click_on "New storage type"

    fill_in "Text", with: @storage_type.text
    click_on "Create Storage type"

    assert_text "Storage type was successfully created"
    click_on "Back"
  end

  test "should update Storage type" do
    visit storage_type_url(@storage_type)
    click_on "Edit this storage type", match: :first

    fill_in "Text", with: @storage_type.text
    click_on "Update Storage type"

    assert_text "Storage type was successfully updated"
    click_on "Back"
  end

  test "should destroy Storage type" do
    visit storage_type_url(@storage_type)
    click_on "Destroy this storage type", match: :first

    assert_text "Storage type was successfully destroyed"
  end
end
