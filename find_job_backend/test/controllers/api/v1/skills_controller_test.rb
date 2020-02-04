require 'test_helper'

class Api::V1::SkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_skills_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_skills_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_skills_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_skills_destroy_url
    assert_response :success
  end

end
