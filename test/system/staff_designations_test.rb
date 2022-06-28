require "application_system_test_case"

class StaffDesignationsTest < ApplicationSystemTestCase
  setup do
    @staff_designation = staff_designations(:one)
  end

  test "visiting the index" do
    visit staff_designations_url
    assert_selector "h1", text: "Staff designations"
  end

  test "should create staff designation" do
    visit staff_designations_url
    click_on "New staff designation"

    fill_in "Name", with: @staff_designation.name
    click_on "Create Staff designation"

    assert_text "Staff designation was successfully created"
    click_on "Back"
  end

  test "should update Staff designation" do
    visit staff_designation_url(@staff_designation)
    click_on "Edit this staff designation", match: :first

    fill_in "Name", with: @staff_designation.name
    click_on "Update Staff designation"

    assert_text "Staff designation was successfully updated"
    click_on "Back"
  end

  test "should destroy Staff designation" do
    visit staff_designation_url(@staff_designation)
    click_on "Destroy this staff designation", match: :first

    assert_text "Staff designation was successfully destroyed"
  end
end
