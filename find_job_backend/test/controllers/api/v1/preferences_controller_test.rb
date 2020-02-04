require 'test_helper'

class Api::V1::PreferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_preferences_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_preferences_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_preferences_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_preferences_destroy_url
    assert_response :success
  end

end
