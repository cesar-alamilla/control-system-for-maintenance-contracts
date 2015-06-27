require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { Laboratory_Department: @location.Laboratory_Department, Mail: @location.Mail, Manager: @location.Manager, id_Contract_type: @location.id_Contract_type, id_Equipment: @location.id_Equipment, id_Supplier: @location.id_Supplier, id_User: @location.id_User }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    patch :update, id: @location, location: { Laboratory_Department: @location.Laboratory_Department, Mail: @location.Mail, Manager: @location.Manager, id_Contract_type: @location.id_Contract_type, id_Equipment: @location.id_Equipment, id_Supplier: @location.id_Supplier, id_User: @location.id_User }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
