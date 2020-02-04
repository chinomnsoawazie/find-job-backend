require 'test_helper'

class Api::V1::ToDosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_to_dos_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_to_dos_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_to_dos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_to_dos_destroy_url
    assert_response :success
  end

end
