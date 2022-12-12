require "test_helper"

class BookmarkControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get bookmark_update_url
    assert_response :success
  end
end
