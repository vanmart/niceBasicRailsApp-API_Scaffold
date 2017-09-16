require 'test_helper'

class BasicControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get basic_landing_url
    assert_response :success
  end

end
