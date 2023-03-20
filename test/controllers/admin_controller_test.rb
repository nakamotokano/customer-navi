require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get admins" do
    get admin_admins_url
    assert_response :success
  end

  test "should get top" do
    get admin_top_url
    assert_response :success
  end

  test "should get create" do
    get admin_create_url
    assert_response :success
  end

  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_show_url
    assert_response :success
  end

  test "should get update" do
    get admin_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_destroy_url
    assert_response :success
  end
end
