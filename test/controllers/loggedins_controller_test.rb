require 'test_helper'

class LoggedinsControllerTest < ActionController::TestCase
  setup do
    @loggedin = loggedins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loggedins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loggedin" do
    assert_difference('Loggedin.count') do
      post :create, loggedin: { interests: @loggedin.interests, uid: @loggedin.uid }
    end

    assert_redirected_to loggedin_path(assigns(:loggedin))
  end

  test "should show loggedin" do
    get :show, id: @loggedin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loggedin
    assert_response :success
  end

  test "should update loggedin" do
    patch :update, id: @loggedin, loggedin: { interests: @loggedin.interests, uid: @loggedin.uid }
    assert_redirected_to loggedin_path(assigns(:loggedin))
  end

  test "should destroy loggedin" do
    assert_difference('Loggedin.count', -1) do
      delete :destroy, id: @loggedin
    end

    assert_redirected_to loggedins_path
  end
end
