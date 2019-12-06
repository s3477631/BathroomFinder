require 'test_helper'

class UserlocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userlocation = userlocations(:one)
  end

  test "should get index" do
    get userlocations_url
    assert_response :success
  end

  test "should get new" do
    get new_userlocation_url
    assert_response :success
  end

  test "should create userlocation" do
    assert_difference('Userlocation.count') do
      post userlocations_url, params: { userlocation: { lat: @userlocation.lat, lng: @userlocation.lng, user_id: @userlocation.user_id } }
    end

    assert_redirected_to userlocation_url(Userlocation.last)
  end

  test "should show userlocation" do
    get userlocation_url(@userlocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_userlocation_url(@userlocation)
    assert_response :success
  end

  test "should update userlocation" do
    patch userlocation_url(@userlocation), params: { userlocation: { lat: @userlocation.lat, lng: @userlocation.lng, user_id: @userlocation.user_id } }
    assert_redirected_to userlocation_url(@userlocation)
  end

  test "should destroy userlocation" do
    assert_difference('Userlocation.count', -1) do
      delete userlocation_url(@userlocation)
    end

    assert_redirected_to userlocations_url
  end
end
