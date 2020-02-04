require 'test_helper'

class Api::V1::MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_memberships_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_memberships_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_memberships_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_memberships_destroy_url
    assert_response :success
  end

end
