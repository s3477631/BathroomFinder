require "application_system_test_case"

class BathroomsTest < ApplicationSystemTestCase
  setup do
    @bathroom = bathrooms(:one)
  end

  test "visiting the index" do
    visit bathrooms_url
    assert_selector "h1", text: "Bathrooms"
  end

  test "creating a Bathroom" do
    visit bathrooms_url
    click_on "New Bathroom"

    fill_in "Description", with: @bathroom.description
    fill_in "Rating", with: @bathroom.rating
    fill_in "Xcoord", with: @bathroom.xcoord
    fill_in "Ycoord", with: @bathroom.ycoord
    click_on "Create Bathroom"

    assert_text "Bathroom was successfully created"
    click_on "Back"
  end

  test "updating a Bathroom" do
    visit bathrooms_url
    click_on "Edit", match: :first

    fill_in "Description", with: @bathroom.description
    fill_in "Rating", with: @bathroom.rating
    fill_in "Xcoord", with: @bathroom.xcoord
    fill_in "Ycoord", with: @bathroom.ycoord
    click_on "Update Bathroom"

    assert_text "Bathroom was successfully updated"
    click_on "Back"
  end

  test "destroying a Bathroom" do
    visit bathrooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bathroom was successfully destroyed"
  end
end
