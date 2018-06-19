require 'test_helper'

class SurfSessionsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @surf_session = surf_sessions(:surf_session_one)
  end

  test "should get index" do
    get surf_sessions_path
    assert_response :success
  end

  test "new should redirect without login" do
    get new_surf_session_path
    assert_redirected_to login_path
  end

  test "new should not redirect with login" do
    user = User.create!(email: "example@example.com", password: "password", name: "example")
    manual_sign_in_as(user)

    get new_surf_session_path
    assert_response :success
  end

  test "should show surf session" do
    get surf_session_path(@surf_session)
    assert_response :success
  end
end
