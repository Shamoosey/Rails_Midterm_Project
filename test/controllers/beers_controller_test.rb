require 'test_helper'

class BeersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get beers_show_url
    assert_response :success
  end

end
