require 'test_helper'

class Supplier::SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier_supplier = supplier_suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_supplier" do
    assert_difference('Supplier::Supplier.count') do
      post :create, supplier_supplier: { Bussines_name: @supplier_supplier.Bussines_name, Contact: @supplier_supplier.Contact, Mail: @supplier_supplier.Mail, Phone: @supplier_supplier.Phone, id_Contract_type: @supplier_supplier.id_Contract_type, id_Equipment: @supplier_supplier.id_Equipment, id_Location: @supplier_supplier.id_Location, id_User: @supplier_supplier.id_User }
    end

    assert_redirected_to supplier_supplier_path(assigns(:supplier_supplier))
  end

  test "should show supplier_supplier" do
    get :show, id: @supplier_supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_supplier
    assert_response :success
  end

  test "should update supplier_supplier" do
    patch :update, id: @supplier_supplier, supplier_supplier: { Bussines_name: @supplier_supplier.Bussines_name, Contact: @supplier_supplier.Contact, Mail: @supplier_supplier.Mail, Phone: @supplier_supplier.Phone, id_Contract_type: @supplier_supplier.id_Contract_type, id_Equipment: @supplier_supplier.id_Equipment, id_Location: @supplier_supplier.id_Location, id_User: @supplier_supplier.id_User }
    assert_redirected_to supplier_supplier_path(assigns(:supplier_supplier))
  end

  test "should destroy supplier_supplier" do
    assert_difference('Supplier::Supplier.count', -1) do
      delete :destroy, id: @supplier_supplier
    end

    assert_redirected_to supplier_suppliers_path
  end
end
