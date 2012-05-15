require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { Is_Admin: @user.Is_Admin, Problem_ID: @user.Problem_ID, Solution_ID: @user.Solution_ID, User_ID: @user.User_ID, creation_date: @user.creation_date, email: @user.email, name: @user.name, password: @user.password, phone: @user.phone, updated_date: @user.updated_date }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { Is_Admin: @user.Is_Admin, Problem_ID: @user.Problem_ID, Solution_ID: @user.Solution_ID, User_ID: @user.User_ID, creation_date: @user.creation_date, email: @user.email, name: @user.name, password: @user.password, phone: @user.phone, updated_date: @user.updated_date }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
