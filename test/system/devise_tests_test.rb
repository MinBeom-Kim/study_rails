require "application_system_test_case"

class DeviseTestsTest < ApplicationSystemTestCase
  setup do
    @devise_test = devise_tests(:one)
  end

  test "visiting the index" do
    visit devise_tests_url
    assert_selector "h1", text: "Devise Tests"
  end

  test "creating a Devise test" do
    visit devise_tests_url
    click_on "New Devise Test"

    click_on "Create Devise test"

    assert_text "Devise test was successfully created"
    click_on "Back"
  end

  test "updating a Devise test" do
    visit devise_tests_url
    click_on "Edit", match: :first

    click_on "Update Devise test"

    assert_text "Devise test was successfully updated"
    click_on "Back"
  end

  test "destroying a Devise test" do
    visit devise_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Devise test was successfully destroyed"
  end
end
