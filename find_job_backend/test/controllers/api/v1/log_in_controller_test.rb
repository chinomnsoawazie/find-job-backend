require 'test_helper'

class Api::V1::LogInControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_log_in_create_url
    assert_response :success
  end

end
