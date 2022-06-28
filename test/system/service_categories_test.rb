require "application_system_test_case"

class ServiceCategoriesTest < ApplicationSystemTestCase
  setup do
    @service_category = service_categories(:one)
  end

  test "visiting the index" do
    visit service_categories_url
    assert_selector "h1", text: "Service categories"
  end

  test "should create service category" do
    visit service_categories_url
    click_on "New service category"

    fill_in "Name", with: @service_category.name
    click_on "Create Service category"

    assert_text "Service category was successfully created"
    click_on "Back"
  end

  test "should update Service category" do
    visit service_category_url(@service_category)
    click_on "Edit this service category", match: :first

    fill_in "Name", with: @service_category.name
    click_on "Update Service category"

    assert_text "Service category was successfully updated"
    click_on "Back"
  end

  test "should destroy Service category" do
    visit service_category_url(@service_category)
    click_on "Destroy this service category", match: :first

    assert_text "Service category was successfully destroyed"
  end
end
