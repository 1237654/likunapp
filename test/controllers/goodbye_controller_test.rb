require 'test_helper'

class GoodbyeControllerTest < ActionDispatch::IntegrationTest
  test "should get bye" do
    get goodbye_bye_url
    assert_response :success
  end

end
