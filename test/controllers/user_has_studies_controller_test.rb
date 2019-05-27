require 'test_helper'

class UserHasStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_has_study = user_has_studies(:one)
  end

  test "should get index" do
    get user_has_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_user_has_study_url
    assert_response :success
  end

  test "should create user_has_study" do
    assert_difference('UserHasStudy.count') do
      post user_has_studies_url, params: { user_has_study: { study_id: @user_has_study.study_id, user_id: @user_has_study.user_id, user_role: @user_has_study.user_role } }
    end

    assert_redirected_to user_has_study_url(UserHasStudy.last)
  end

  test "should show user_has_study" do
    get user_has_study_url(@user_has_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_has_study_url(@user_has_study)
    assert_response :success
  end

  test "should update user_has_study" do
    patch user_has_study_url(@user_has_study), params: { user_has_study: { study_id: @user_has_study.study_id, user_id: @user_has_study.user_id, user_role: @user_has_study.user_role } }
    assert_redirected_to user_has_study_url(@user_has_study)
  end

  test "should destroy user_has_study" do
    assert_difference('UserHasStudy.count', -1) do
      delete user_has_study_url(@user_has_study)
    end

    assert_redirected_to user_has_studies_url
  end
end
