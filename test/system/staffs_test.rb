require "application_system_test_case"

class StaffsTest < ApplicationSystemTestCase
  setup do
    @staff = staffs(:one)
  end

  test "visiting the index" do
    visit staffs_url
    assert_selector "h1", text: "Staffs"
  end

  test "should create staff" do
    visit staffs_url
    click_on "New staff"

    fill_in "Company", with: @staff.company_id
    fill_in "Invited by", with: @staff.invited_by
    fill_in "Invited on", with: @staff.invited_on
    check "Is active" if @staff.is_active
    fill_in "Joined on", with: @staff.joined_on
    fill_in "Left on", with: @staff.left_on
    fill_in "Reason for leaving", with: @staff.reason_for_leaving
    fill_in "Staff designation", with: @staff.staff_designation
    fill_in "User", with: @staff.user_id
    click_on "Create Staff"

    assert_text "Staff was successfully created"
    click_on "Back"
  end

  test "should update Staff" do
    visit staff_url(@staff)
    click_on "Edit this staff", match: :first

    fill_in "Company", with: @staff.company_id
    fill_in "Invited by", with: @staff.invited_by
    fill_in "Invited on", with: @staff.invited_on
    check "Is active" if @staff.is_active
    fill_in "Joined on", with: @staff.joined_on
    fill_in "Left on", with: @staff.left_on
    fill_in "Reason for leaving", with: @staff.reason_for_leaving
    fill_in "Staff designation", with: @staff.staff_designation
    fill_in "User", with: @staff.user_id
    click_on "Update Staff"

    assert_text "Staff was successfully updated"
    click_on "Back"
  end

  test "should destroy Staff" do
    visit staff_url(@staff)
    click_on "Destroy this staff", match: :first

    assert_text "Staff was successfully destroyed"
  end
end
