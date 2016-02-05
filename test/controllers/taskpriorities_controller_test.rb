require 'test_helper'

class TaskprioritiesControllerTest < ActionController::TestCase
  setup do
    @taskpriority = taskpriorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskpriorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskpriority" do
    assert_difference('Taskpriority.count') do
      post :create, taskpriority: { priority: @taskpriority.priority }
    end

    assert_redirected_to taskpriority_path(assigns(:taskpriority))
  end

  test "should show taskpriority" do
    get :show, id: @taskpriority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskpriority
    assert_response :success
  end

  test "should update taskpriority" do
    patch :update, id: @taskpriority, taskpriority: { priority: @taskpriority.priority }
    assert_redirected_to taskpriority_path(assigns(:taskpriority))
  end

  test "should destroy taskpriority" do
    assert_difference('Taskpriority.count', -1) do
      delete :destroy, id: @taskpriority
    end

    assert_redirected_to taskpriorities_path
  end
end
