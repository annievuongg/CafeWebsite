require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get book_a_table" do
    get bookings_book_a_table_url
    assert_response :success
  end

  test "should get booked" do
    get bookings_booked_url
    assert_response :success
  end

end
