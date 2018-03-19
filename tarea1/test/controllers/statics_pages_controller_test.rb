require 'test_helper'

class StaticsPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get statics_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get statics_pages_about_url
    assert_response :success
  end

end
