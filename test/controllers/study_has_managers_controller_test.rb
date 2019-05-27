require 'test_helper'

class StudyHasManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_has_manager = study_has_managers(:one)
  end

  test "should get index" do
    get study_has_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_study_has_manager_url
    assert_response :success
  end

  test "should create study_has_manager" do
    assert_difference('StudyHasManager.count') do
      post study_has_managers_url, params: { study_has_manager: { approve: @study_has_manager.approve, manager_id: @study_has_manager.manager_id, study_id: @study_has_manager.study_id } }
    end

    assert_redirected_to study_has_manager_url(StudyHasManager.last)
  end

  test "should show study_has_manager" do
    get study_has_manager_url(@study_has_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_has_manager_url(@study_has_manager)
    assert_response :success
  end

  test "should update study_has_manager" do
    patch study_has_manager_url(@study_has_manager), params: { study_has_manager: { approve: @study_has_manager.approve, manager_id: @study_has_manager.manager_id, study_id: @study_has_manager.study_id } }
    assert_redirected_to study_has_manager_url(@study_has_manager)
  end

  test "should destroy study_has_manager" do
    assert_difference('StudyHasManager.count', -1) do
      delete study_has_manager_url(@study_has_manager)
    end

    assert_redirected_to study_has_managers_url
  end
end
