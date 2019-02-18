require 'test_helper'

class GardensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gardens_index_url
    assert_response :success
  end

  test "should get show" do
    get gardens_show_url
    assert_response :success
  end

  test "should get new" do
    get gardens_new_url
    assert_response :success
  end

  test "should get create" do
    get gardens_create_url
    assert_response :success
  end

  test "should get destroy" do
    get gardens_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get gardens_edit_url
    assert_response :success
  end

  test "should get update" do
    get gardens_update_url
    assert_response :success
  end

end
