require "application_system_test_case"

class CategoryHasStudiesTest < ApplicationSystemTestCase
  setup do
    @category_has_study = category_has_studies(:one)
  end

  test "visiting the index" do
    visit category_has_studies_url
    assert_selector "h1", text: "Category Has Studies"
  end

  test "creating a Category has study" do
    visit category_has_studies_url
    click_on "New Category Has Study"

    fill_in "Category", with: @category_has_study.category_id
    fill_in "Study", with: @category_has_study.study_id
    click_on "Create Category has study"

    assert_text "Category has study was successfully created"
    click_on "Back"
  end

  test "updating a Category has study" do
    visit category_has_studies_url
    click_on "Edit", match: :first

    fill_in "Category", with: @category_has_study.category_id
    fill_in "Study", with: @category_has_study.study_id
    click_on "Update Category has study"

    assert_text "Category has study was successfully updated"
    click_on "Back"
  end

  test "destroying a Category has study" do
    visit category_has_studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category has study was successfully destroyed"
  end
end
