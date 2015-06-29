require 'test_helper'

class Location::LocationsControllerTest < ActionController::TestCase
  setup do
    @location_location = location_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_location" do
    assert_difference('Location::Location.count') do
      post :create, location_location: { Contract_type_id: @location_location.Contract_type_id, Device_id: @location_location.Device_id, Laboratory_Department: @location_location.Laboratory_Department, Mail: @location_location.Mail, Manager: @location_location.Manager, Supplier_id: @location_location.Supplier_id, User_id: @location_location.User_id }
    end

    assert_redirected_to location_location_path(assigns(:location_location))
  end

  test "should show location_location" do
    get :show, id: @location_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_location
    assert_response :success
  end

  test "should update location_location" do
    patch :update, id: @location_location, location_location: { Contract_type_id: @location_location.Contract_type_id, Device_id: @location_location.Device_id, Laboratory_Department: @location_location.Laboratory_Department, Mail: @location_location.Mail, Manager: @location_location.Manager, Supplier_id: @location_location.Supplier_id, User_id: @location_location.User_id }
    assert_redirected_to location_location_path(assigns(:location_location))
  end

  test "should destroy location_location" do
    assert_difference('Location::Location.count', -1) do
      delete :destroy, id: @location_location
    end

    assert_redirected_to location_locations_path
  end
end
