require "application_system_test_case"

class CompanyLocationsTest < ApplicationSystemTestCase
  setup do
    @company_location = company_locations(:one)
  end

  test "visiting the index" do
    visit company_locations_url
    assert_selector "h1", text: "Company locations"
  end

  test "should create company location" do
    visit company_locations_url
    click_on "New company location"

    fill_in "Company", with: @company_location.company_id
    fill_in "Name", with: @company_location.name
    fill_in "Products", with: @company_location.products
    fill_in "Services", with: @company_location.services
    fill_in "User", with: @company_location.user_id
    click_on "Create Company location"

    assert_text "Company location was successfully created"
    click_on "Back"
  end

  test "should update Company location" do
    visit company_location_url(@company_location)
    click_on "Edit this company location", match: :first

    fill_in "Company", with: @company_location.company_id
    fill_in "Name", with: @company_location.name
    fill_in "Products", with: @company_location.products
    fill_in "Services", with: @company_location.services
    fill_in "User", with: @company_location.user_id
    click_on "Update Company location"

    assert_text "Company location was successfully updated"
    click_on "Back"
  end

  test "should destroy Company location" do
    visit company_location_url(@company_location)
    click_on "Destroy this company location", match: :first

    assert_text "Company location was successfully destroyed"
  end
end
