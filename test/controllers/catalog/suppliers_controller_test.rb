require 'test_helper'

class Catalog::SuppliersControllerTest < ActionController::TestCase
  setup do
    @catalog_supplier = catalog_suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalog_suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalog_supplier" do
    assert_difference('Catalog::Supplier.count') do
      post :create, catalog_supplier: { Bussines_name: @catalog_supplier.Bussines_name, Contact: @catalog_supplier.Contact, Contract_type_id: @catalog_supplier.Contract_type_id, Mail: @catalog_supplier.Mail, Phone: @catalog_supplier.Phone }
    end

    assert_redirected_to catalog_supplier_path(assigns(:catalog_supplier))
  end

  test "should show catalog_supplier" do
    get :show, id: @catalog_supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalog_supplier
    assert_response :success
  end

  test "should update catalog_supplier" do
    patch :update, id: @catalog_supplier, catalog_supplier: { Bussines_name: @catalog_supplier.Bussines_name, Contact: @catalog_supplier.Contact, Contract_type_id: @catalog_supplier.Contract_type_id, Mail: @catalog_supplier.Mail, Phone: @catalog_supplier.Phone }
    assert_redirected_to catalog_supplier_path(assigns(:catalog_supplier))
  end

  test "should destroy catalog_supplier" do
    assert_difference('Catalog::Supplier.count', -1) do
      delete :destroy, id: @catalog_supplier
    end

    assert_redirected_to catalog_suppliers_path
  end
end
