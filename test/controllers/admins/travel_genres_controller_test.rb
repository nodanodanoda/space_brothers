require 'test_helper'

class Admins::TravelGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admins_travel_genres_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_travel_genres_edit_url
    assert_response :success
  end

end
