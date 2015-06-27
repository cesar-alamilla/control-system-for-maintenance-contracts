require 'test_helper'

class User::UsersControllerTest < ActionController::TestCase
  setup do
    @user_user = user_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_user" do
    assert_difference('User::User.count') do
      post :create, user_user: { Login: @user_user.Login, Mail: @user_user.Mail, Name: @user_user.Name, id_Contract_type: @user_user.id_Contract_type, id_Equipment: @user_user.id_Equipment, id_Location: @user_user.id_Location, id_Supplier: @user_user.id_Supplier }
    end

    assert_redirected_to user_user_path(assigns(:user_user))
  end

  test "should show user_user" do
    get :show, id: @user_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_user
    assert_response :success
  end

  test "should update user_user" do
    patch :update, id: @user_user, user_user: { Login: @user_user.Login, Mail: @user_user.Mail, Name: @user_user.Name, id_Contract_type: @user_user.id_Contract_type, id_Equipment: @user_user.id_Equipment, id_Location: @user_user.id_Location, id_Supplier: @user_user.id_Supplier }
    assert_redirected_to user_user_path(assigns(:user_user))
  end

  test "should destroy user_user" do
    assert_difference('User::User.count', -1) do
      delete :destroy, id: @user_user
    end

    assert_redirected_to user_users_path
  end
end
