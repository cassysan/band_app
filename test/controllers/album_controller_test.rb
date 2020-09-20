require 'test_helper'

class AlbumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get album_index_url
    assert_response :success
  end

  test "should get new" do
    get album_new_url
    assert_response :success
  end

  test "should get show" do
    get album_show_url
    assert_response :success
  end

  test "should get create" do
    get album_create_url
    assert_response :success
  end

  test "should get update" do
    get album_update_url
    assert_response :success
  end

  test "should get destroy" do
    get album_destroy_url
    assert_response :success
  end

end
