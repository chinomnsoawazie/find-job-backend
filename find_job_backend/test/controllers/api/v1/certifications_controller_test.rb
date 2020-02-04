require 'test_helper'

class Api::V1::CertificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_certifications_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_certifications_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_certifications_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_certifications_destroy_url
    assert_response :success
  end

end
