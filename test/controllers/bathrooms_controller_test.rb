require 'test_helper'

class BathroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bathroom = bathrooms(:one)
  end

  test "should get index" do
    get bathrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_bathroom_url
    assert_response :success
  end

  test "should create bathroom" do
    assert_difference('Bathroom.count') do
      post bathrooms_url, params: { bathroom: { description: @bathroom.description, rating: @bathroom.rating, xcoord: @bathroom.xcoord, ycoord: @bathroom.ycoord } }
    end

    assert_redirected_to bathroom_url(Bathroom.last)
  end

  test "should show bathroom" do
    get bathroom_url(@bathroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_bathroom_url(@bathroom)
    assert_response :success
  end

  test "should update bathroom" do
    patch bathroom_url(@bathroom), params: { bathroom: { description: @bathroom.description, rating: @bathroom.rating, xcoord: @bathroom.xcoord, ycoord: @bathroom.ycoord } }
    assert_redirected_to bathroom_url(@bathroom)
  end

  test "should destroy bathroom" do
    assert_difference('Bathroom.count', -1) do
      delete bathroom_url(@bathroom)
    end

    assert_redirected_to bathrooms_url
  end
end
