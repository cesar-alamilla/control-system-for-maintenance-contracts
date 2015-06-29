require 'test_helper'

class ContractType::ContractTypesControllerTest < ActionController::TestCase
  setup do
    @contract_type_contract_type = contract_type_contract_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contract_type_contract_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract_type_contract_type" do
    assert_difference('ContractType::ContractType.count') do
      post :create, contract_type_contract_type: { Device_id: @contract_type_contract_type.Device_id, Location_id: @contract_type_contract_type.Location_id, Supplier_id: @contract_type_contract_type.Supplier_id, Type: @contract_type_contract_type.Type, User_id: @contract_type_contract_type.User_id }
    end

    assert_redirected_to contract_type_contract_type_path(assigns(:contract_type_contract_type))
  end

  test "should show contract_type_contract_type" do
    get :show, id: @contract_type_contract_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract_type_contract_type
    assert_response :success
  end

  test "should update contract_type_contract_type" do
    patch :update, id: @contract_type_contract_type, contract_type_contract_type: { Device_id: @contract_type_contract_type.Device_id, Location_id: @contract_type_contract_type.Location_id, Supplier_id: @contract_type_contract_type.Supplier_id, Type: @contract_type_contract_type.Type, User_id: @contract_type_contract_type.User_id }
    assert_redirected_to contract_type_contract_type_path(assigns(:contract_type_contract_type))
  end

  test "should destroy contract_type_contract_type" do
    assert_difference('ContractType::ContractType.count', -1) do
      delete :destroy, id: @contract_type_contract_type
    end

    assert_redirected_to contract_type_contract_types_path
  end
end
