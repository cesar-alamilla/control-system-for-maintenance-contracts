require 'test_helper'

class Device::DevicesControllerTest < ActionController::TestCase
  setup do
    @device_device = device_devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_device" do
    assert_difference('Device::Device.count') do
      post :create, device_device: { Contract_type_id: @device_device.Contract_type_id, Location: @device_device.Location, Location_id: @device_device.Location_id, Name: @device_device.Name, Provider_who_maintains: @device_device.Provider_who_maintains, Stock_number: @device_device.Stock_number, Supplier_id: @device_device.Supplier_id, User_id: @device_device.User_id }
    end

    assert_redirected_to device_device_path(assigns(:device_device))
  end

  test "should show device_device" do
    get :show, id: @device_device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_device
    assert_response :success
  end

  test "should update device_device" do
    patch :update, id: @device_device, device_device: { Contract_type_id: @device_device.Contract_type_id, Location: @device_device.Location, Location_id: @device_device.Location_id, Name: @device_device.Name, Provider_who_maintains: @device_device.Provider_who_maintains, Stock_number: @device_device.Stock_number, Supplier_id: @device_device.Supplier_id, User_id: @device_device.User_id }
    assert_redirected_to device_device_path(assigns(:device_device))
  end

  test "should destroy device_device" do
    assert_difference('Device::Device.count', -1) do
      delete :destroy, id: @device_device
    end

    assert_redirected_to device_devices_path
  end
end
