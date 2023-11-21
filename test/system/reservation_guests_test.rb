require "application_system_test_case"

class ReservationGuestsTest < ApplicationSystemTestCase
  setup do
    @reservation_guest = reservation_guests(:one)
  end

  test "visiting the index" do
    visit reservation_guests_url
    assert_selector "h1", text: "Reservation guests"
  end

  test "should create reservation guest" do
    visit reservation_guests_url
    click_on "New reservation guest"

    fill_in "Contact number", with: @reservation_guest.contact_number
    fill_in "Email", with: @reservation_guest.email
    fill_in "Guest name", with: @reservation_guest.guest_name
    fill_in "Reservation", with: @reservation_guest.reservation_id
    click_on "Create Reservation guest"

    assert_text "Reservation guest was successfully created"
    click_on "Back"
  end

  test "should update Reservation guest" do
    visit reservation_guest_url(@reservation_guest)
    click_on "Edit this reservation guest", match: :first

    fill_in "Contact number", with: @reservation_guest.contact_number
    fill_in "Email", with: @reservation_guest.email
    fill_in "Guest name", with: @reservation_guest.guest_name
    fill_in "Reservation", with: @reservation_guest.reservation_id
    click_on "Update Reservation guest"

    assert_text "Reservation guest was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation guest" do
    visit reservation_guest_url(@reservation_guest)
    click_on "Destroy this reservation guest", match: :first

    assert_text "Reservation guest was successfully destroyed"
  end
end
