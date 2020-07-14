require 'test_helper'

class Admins::TravelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_travels_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_travels_show_url
    assert_response :success
  end

  test "should get new" do
    get admins_travels_new_url
    assert_response :success
  end

  test "should get edit" do
    get admins_travels_edit_url
    assert_response :success
  end

end
