require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Controller" do
    get pages_Controller_url
    assert_response :success
  end
end
