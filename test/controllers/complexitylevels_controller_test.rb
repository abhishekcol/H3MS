require 'test_helper'

class ComplexitylevelsControllerTest < ActionController::TestCase
  setup do
    @complexitylevel = complexitylevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complexitylevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complexitylevel" do
    assert_difference('Complexitylevel.count') do
      post :create, complexitylevel: { complexitylevel: @complexitylevel.complexitylevel }
    end

    assert_redirected_to complexitylevel_path(assigns(:complexitylevel))
  end

  test "should show complexitylevel" do
    get :show, id: @complexitylevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complexitylevel
    assert_response :success
  end

  test "should update complexitylevel" do
    patch :update, id: @complexitylevel, complexitylevel: { complexitylevel: @complexitylevel.complexitylevel }
    assert_redirected_to complexitylevel_path(assigns(:complexitylevel))
  end

  test "should destroy complexitylevel" do
    assert_difference('Complexitylevel.count', -1) do
      delete :destroy, id: @complexitylevel
    end

    assert_redirected_to complexitylevels_path
  end
end
