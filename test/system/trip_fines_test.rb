require "application_system_test_case"

class TripFinesTest < ApplicationSystemTestCase
  setup do
    @trip_fine = trip_fines(:one)
  end

  test "visiting the index" do
    visit trip_fines_url
    assert_selector "h1", text: "Trip fines"
  end

  test "should create trip fine" do
    visit trip_fines_url
    click_on "New trip fine"

    fill_in "Fine", with: @trip_fine.fine
    fill_in "Price", with: @trip_fine.price
    fill_in "Trip", with: @trip_fine.trip_id
    click_on "Create Trip fine"

    assert_text "Trip fine was successfully created"
    click_on "Back"
  end

  test "should update Trip fine" do
    visit trip_fine_url(@trip_fine)
    click_on "Edit this trip fine", match: :first

    fill_in "Fine", with: @trip_fine.fine
    fill_in "Price", with: @trip_fine.price
    fill_in "Trip", with: @trip_fine.trip_id
    click_on "Update Trip fine"

    assert_text "Trip fine was successfully updated"
    click_on "Back"
  end

  test "should destroy Trip fine" do
    visit trip_fine_url(@trip_fine)
    click_on "Destroy this trip fine", match: :first

    assert_text "Trip fine was successfully destroyed"
  end
end
