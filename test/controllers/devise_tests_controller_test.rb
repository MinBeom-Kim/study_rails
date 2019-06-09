require 'test_helper'

class DeviseTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devise_test = devise_tests(:one)
  end

  test "should get index" do
    get devise_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_devise_test_url
    assert_response :success
  end

  test "should create devise_test" do
    assert_difference('DeviseTest.count') do
      post devise_tests_url, params: { devise_test: {  } }
    end

    assert_redirected_to devise_test_url(DeviseTest.last)
  end

  test "should show devise_test" do
    get devise_test_url(@devise_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_devise_test_url(@devise_test)
    assert_response :success
  end

  test "should update devise_test" do
    patch devise_test_url(@devise_test), params: { devise_test: {  } }
    assert_redirected_to devise_test_url(@devise_test)
  end

  test "should destroy devise_test" do
    assert_difference('DeviseTest.count', -1) do
      delete devise_test_url(@devise_test)
    end

    assert_redirected_to devise_tests_url
  end
end
