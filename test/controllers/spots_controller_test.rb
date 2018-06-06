require 'test_helper'

class SpotsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @spot = spots(:one)
  end

  test "should get index" do
    get spots_path
    assert_response :success
  end

  test "new should be successful for logged in user" do
    user = User.create!(email: "example@example.com", password: "password", name: "example")
    manual_sign_in_as(user)

    get new_spot_path
    assert_response :success
  end

  test "new should redirect when not logged in" do
    get new_spot_path
    assert_redirected_to login_path
  end

   test "should show spot" do
     get spot_path(@spot)
     assert_response :success
   end

   test "should delete spot" do
     spot = spots(:one)
     assert_difference('Spot.count', -1) do
       delete spot_url(spot)
     end
   end

   test "should redirect after spot deletion" do
     spot = spots(:one)
     delete spot_url(spot)
     assert_redirected_to spots_path
   end

   test "should update spot" do
     spot = spots(:one)
     patch spot_url(spot), params: { spot: { title: "updated" } }
     spot.reload

     assert_equal "updated", spot.title
   end

   test "should redirect after spot update" do
     spot = spots(:one)
     patch spot_url(spot), params: { spot: { title: "updated" } }
     assert_redirected_to spot_url(spot)
   end
end
