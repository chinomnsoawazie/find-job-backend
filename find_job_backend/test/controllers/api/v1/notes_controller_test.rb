require 'test_helper'

class Api::V1::NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_notes_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_notes_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_notes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_notes_destroy_url
    assert_response :success
  end

end
