require "application_system_test_case"

class StudyHasManagersTest < ApplicationSystemTestCase
  setup do
    @study_has_manager = study_has_managers(:one)
  end

  test "visiting the index" do
    visit study_has_managers_url
    assert_selector "h1", text: "Study Has Managers"
  end

  test "creating a Study has manager" do
    visit study_has_managers_url
    click_on "New Study Has Manager"

    check "Approve" if @study_has_manager.approve
    fill_in "Manager", with: @study_has_manager.manager_id
    fill_in "Study", with: @study_has_manager.study_id
    click_on "Create Study has manager"

    assert_text "Study has manager was successfully created"
    click_on "Back"
  end

  test "updating a Study has manager" do
    visit study_has_managers_url
    click_on "Edit", match: :first

    check "Approve" if @study_has_manager.approve
    fill_in "Manager", with: @study_has_manager.manager_id
    fill_in "Study", with: @study_has_manager.study_id
    click_on "Update Study has manager"

    assert_text "Study has manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Study has manager" do
    visit study_has_managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study has manager was successfully destroyed"
  end
end
