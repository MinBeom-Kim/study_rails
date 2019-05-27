require "application_system_test_case"

class UserHasStudiesTest < ApplicationSystemTestCase
  setup do
    @user_has_study = user_has_studies(:one)
  end

  test "visiting the index" do
    visit user_has_studies_url
    assert_selector "h1", text: "User Has Studies"
  end

  test "creating a User has study" do
    visit user_has_studies_url
    click_on "New User Has Study"

    fill_in "Study", with: @user_has_study.study_id
    fill_in "User", with: @user_has_study.user_id
    fill_in "User role", with: @user_has_study.user_role
    click_on "Create User has study"

    assert_text "User has study was successfully created"
    click_on "Back"
  end

  test "updating a User has study" do
    visit user_has_studies_url
    click_on "Edit", match: :first

    fill_in "Study", with: @user_has_study.study_id
    fill_in "User", with: @user_has_study.user_id
    fill_in "User role", with: @user_has_study.user_role
    click_on "Update User has study"

    assert_text "User has study was successfully updated"
    click_on "Back"
  end

  test "destroying a User has study" do
    visit user_has_studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User has study was successfully destroyed"
  end
end
