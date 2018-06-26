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

  test "should delete surf session" do
    surf_session = surf_sessions(:surf_session_one)

    assert_difference('SurfSession.count', -1) do
      delete surf_session_url(surf_session)
    end
  end

  test "should redirect users after surf session deletion" do
    surf_session = surf_sessions(:surf_session_one)

    delete surf_session_path(surf_session)
    assert_redirected_to surf_sessions_path
  end

  test "should update surf session" do
    user = User.create!(email: "example@example.com", password: "password", name: "example")
    manual_sign_in_as(user)
    surf_session = surf_sessions(:two)

    patch surf_session_path(surf_session), params: { surf_session: { session_summary: "updated" } }
    surf_session.reload

    assert_equal "updated", surf_session.session_summary
  end

  test "should redirect after update" do
    surf_session = surf_sessions(:two)

    patch surf_session_path(surf_session), params: { surf_session: { session_summary: "updated" } }
    assert_redirected_to login_path
  end
end
