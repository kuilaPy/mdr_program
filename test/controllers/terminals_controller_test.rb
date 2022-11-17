require 'test_helper'

class TerminalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get terminals_index_url
    assert_response :success
  end

  test "should get create" do
    get terminals_create_url
    assert_response :success
  end

  test "should get show" do
    get terminals_show_url
    assert_response :success
  end

  test "should get edit" do
    get terminals_edit_url
    assert_response :success
  end

  test "should get delete" do
    get terminals_delete_url
    assert_response :success
  end

end
