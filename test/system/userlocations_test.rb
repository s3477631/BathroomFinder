require "application_system_test_case"

class UserlocationsTest < ApplicationSystemTestCase
  setup do
    @userlocation = userlocations(:one)
  end

  test "visiting the index" do
    visit userlocations_url
    assert_selector "h1", text: "Userlocations"
  end

  test "creating a Userlocation" do
    visit userlocations_url
    click_on "New Userlocation"

    fill_in "Lat", with: @userlocation.lat
    fill_in "Lng", with: @userlocation.lng
    fill_in "User", with: @userlocation.user_id
    click_on "Create Userlocation"

    assert_text "Userlocation was successfully created"
    click_on "Back"
  end

  test "updating a Userlocation" do
    visit userlocations_url
    click_on "Edit", match: :first

    fill_in "Lat", with: @userlocation.lat
    fill_in "Lng", with: @userlocation.lng
    fill_in "User", with: @userlocation.user_id
    click_on "Update Userlocation"

    assert_text "Userlocation was successfully updated"
    click_on "Back"
  end

  test "destroying a Userlocation" do
    visit userlocations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userlocation was successfully destroyed"
  end
end
