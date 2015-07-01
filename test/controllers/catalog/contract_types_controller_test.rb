require 'test_helper'

class Catalog::ContractTypesControllerTest < ActionController::TestCase
  setup do
    @catalog_contract_type = catalog_contract_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalog_contract_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalog_contract_type" do
    assert_difference('Catalog::ContractType.count') do
      post :create, catalog_contract_type: { Supplier: @catalog_contract_type.Supplier, Type: @catalog_contract_type.Type }
    end

    assert_redirected_to catalog_contract_type_path(assigns(:catalog_contract_type))
  end

  test "should show catalog_contract_type" do
    get :show, id: @catalog_contract_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalog_contract_type
    assert_response :success
  end

  test "should update catalog_contract_type" do
    patch :update, id: @catalog_contract_type, catalog_contract_type: { Supplier: @catalog_contract_type.Supplier, Type: @catalog_contract_type.Type }
    assert_redirected_to catalog_contract_type_path(assigns(:catalog_contract_type))
  end

  test "should destroy catalog_contract_type" do
    assert_difference('Catalog::ContractType.count', -1) do
      delete :destroy, id: @catalog_contract_type
    end

    assert_redirected_to catalog_contract_types_path
  end
end
