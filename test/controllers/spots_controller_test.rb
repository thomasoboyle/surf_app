require 'test_helper'

class SpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spots_path
    assert_response :success
  end

  test "new should be success" do
    user = User.create!(email: "example@example.com", password: "password", name: "example")
    manual_sign_in_as(user)
    get new_spot_path
    assert_response :success
  end
end
