require 'test_helper'

class Catalog::DevicesControllerTest < ActionController::TestCase
  setup do
    @catalog_device = catalog_devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalog_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalog_device" do
    assert_difference('Catalog::Device.count') do
      post :create, catalog_device: { Location: @catalog_device.Location, Location_id: @catalog_device.Location_id, Name: @catalog_device.Name, Provider_who_maintains: @catalog_device.Provider_who_maintains, Stock_number: @catalog_device.Stock_number, Supplier_id: @catalog_device.Supplier_id, User_id: @catalog_device.User_id }
    end

    assert_redirected_to catalog_device_path(assigns(:catalog_device))
  end

  test "should show catalog_device" do
    get :show, id: @catalog_device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalog_device
    assert_response :success
  end

  test "should update catalog_device" do
    patch :update, id: @catalog_device, catalog_device: { Location: @catalog_device.Location, Location_id: @catalog_device.Location_id, Name: @catalog_device.Name, Provider_who_maintains: @catalog_device.Provider_who_maintains, Stock_number: @catalog_device.Stock_number, Supplier_id: @catalog_device.Supplier_id, User_id: @catalog_device.User_id }
    assert_redirected_to catalog_device_path(assigns(:catalog_device))
  end

  test "should destroy catalog_device" do
    assert_difference('Catalog::Device.count', -1) do
      delete :destroy, id: @catalog_device
    end

    assert_redirected_to catalog_devices_path
  end
end
