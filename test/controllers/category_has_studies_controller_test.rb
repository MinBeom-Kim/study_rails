require 'test_helper'

class CategoryHasStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_has_study = category_has_studies(:one)
  end

  test "should get index" do
    get category_has_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_category_has_study_url
    assert_response :success
  end

  test "should create category_has_study" do
    assert_difference('CategoryHasStudy.count') do
      post category_has_studies_url, params: { category_has_study: { category_id: @category_has_study.category_id, study_id: @category_has_study.study_id } }
    end

    assert_redirected_to category_has_study_url(CategoryHasStudy.last)
  end

  test "should show category_has_study" do
    get category_has_study_url(@category_has_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_has_study_url(@category_has_study)
    assert_response :success
  end

  test "should update category_has_study" do
    patch category_has_study_url(@category_has_study), params: { category_has_study: { category_id: @category_has_study.category_id, study_id: @category_has_study.study_id } }
    assert_redirected_to category_has_study_url(@category_has_study)
  end

  test "should destroy category_has_study" do
    assert_difference('CategoryHasStudy.count', -1) do
      delete category_has_study_url(@category_has_study)
    end

    assert_redirected_to category_has_studies_url
  end
end
