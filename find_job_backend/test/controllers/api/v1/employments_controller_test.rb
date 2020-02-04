require 'test_helper'

class Api::V1::EmploymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_employments_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_employments_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_employments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_employments_destroy_url
    assert_response :success
  end

end
