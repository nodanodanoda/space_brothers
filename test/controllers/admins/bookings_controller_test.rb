require 'test_helper'

class Admins::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_bookings_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_bookings_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_bookings_edit_url
    assert_response :success
  end

end
