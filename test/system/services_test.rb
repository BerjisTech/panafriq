require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "should create service" do
    visit services_url
    click_on "New service"

    check "Available" if @service.available
    fill_in "Category", with: @service.category
    fill_in "Company", with: @service.company_id
    fill_in "Description", with: @service.description
    fill_in "Name", with: @service.name
    fill_in "Offered locations", with: @service.offered_locations
    fill_in "Price", with: @service.price
    fill_in "Quantity", with: @service.quantity
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "should update Service" do
    visit service_url(@service)
    click_on "Edit this service", match: :first

    check "Available" if @service.available
    fill_in "Category", with: @service.category
    fill_in "Company", with: @service.company_id
    fill_in "Description", with: @service.description
    fill_in "Name", with: @service.name
    fill_in "Offered locations", with: @service.offered_locations
    fill_in "Price", with: @service.price
    fill_in "Quantity", with: @service.quantity
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "should destroy Service" do
    visit service_url(@service)
    click_on "Destroy this service", match: :first

    assert_text "Service was successfully destroyed"
  end
end
