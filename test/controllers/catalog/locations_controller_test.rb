require 'test_helper'

class Catalog::LocationsControllerTest < ActionController::TestCase
  setup do
    @catalog_location = catalog_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalog_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalog_location" do
    assert_difference('Catalog::Location.count') do
      post :create, catalog_location: { Device: @catalog_location.Device, Laboratory_department: @catalog_location.Laboratory_department, Mail: @catalog_location.Mail, Manager: @catalog_location.Manager }
    end

    assert_redirected_to catalog_location_path(assigns(:catalog_location))
  end

  test "should show catalog_location" do
    get :show, id: @catalog_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalog_location
    assert_response :success
  end

  test "should update catalog_location" do
    patch :update, id: @catalog_location, catalog_location: { Device: @catalog_location.Device, Laboratory_department: @catalog_location.Laboratory_department, Mail: @catalog_location.Mail, Manager: @catalog_location.Manager }
    assert_redirected_to catalog_location_path(assigns(:catalog_location))
  end

  test "should destroy catalog_location" do
    assert_difference('Catalog::Location.count', -1) do
      delete :destroy, id: @catalog_location
    end

    assert_redirected_to catalog_locations_path
  end
end
