require "test_helper"

class ReservationGuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation_guest = reservation_guests(:one)
  end

  test "should get index" do
    get reservation_guests_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_guest_url
    assert_response :success
  end

  test "should create reservation_guest" do
    assert_difference("ReservationGuest.count") do
      post reservation_guests_url, params: { reservation_guest: { contact_number: @reservation_guest.contact_number, email: @reservation_guest.email, guest_name: @reservation_guest.guest_name, reservation_id: @reservation_guest.reservation_id } }
    end

    assert_redirected_to reservation_guest_url(ReservationGuest.last)
  end

  test "should show reservation_guest" do
    get reservation_guest_url(@reservation_guest)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_guest_url(@reservation_guest)
    assert_response :success
  end

  test "should update reservation_guest" do
    patch reservation_guest_url(@reservation_guest), params: { reservation_guest: { contact_number: @reservation_guest.contact_number, email: @reservation_guest.email, guest_name: @reservation_guest.guest_name, reservation_id: @reservation_guest.reservation_id } }
    assert_redirected_to reservation_guest_url(@reservation_guest)
  end

  test "should destroy reservation_guest" do
    assert_difference("ReservationGuest.count", -1) do
      delete reservation_guest_url(@reservation_guest)
    end

    assert_redirected_to reservation_guests_url
  end
end
