require 'test_helper'

class SpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spots_index_url
    assert_response :success
  end

end
