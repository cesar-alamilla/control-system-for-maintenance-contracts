require 'test_helper'

class Equipment::EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment_equipment = equipment_equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_equipment)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_equipment" do
    assert_difference('Equipment::Equipment.count') do
      post :create, equipment_equipment: { Location: @equipment_equipment.Location, Name: @equipment_equipment.Name, Provider_who_maintains: @equipment_equipment.Provider_who_maintains, Stock_number: @equipment_equipment.Stock_number, id_Contract_type: @equipment_equipment.id_Contract_type, id_Supplier_integer: @equipment_equipment.id_Supplier_integer, id_location: @equipment_equipment.id_location, id_user: @equipment_equipment.id_user }
    end

    assert_redirected_to equipment_equipment_path(assigns(:equipment_equipment))
  end

  test "should show equipment_equipment" do
    get :show, id: @equipment_equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_equipment
    assert_response :success
  end

  test "should update equipment_equipment" do
    patch :update, id: @equipment_equipment, equipment_equipment: { Location: @equipment_equipment.Location, Name: @equipment_equipment.Name, Provider_who_maintains: @equipment_equipment.Provider_who_maintains, Stock_number: @equipment_equipment.Stock_number, id_Contract_type: @equipment_equipment.id_Contract_type, id_Supplier_integer: @equipment_equipment.id_Supplier_integer, id_location: @equipment_equipment.id_location, id_user: @equipment_equipment.id_user }
    assert_redirected_to equipment_equipment_path(assigns(:equipment_equipment))
  end

  test "should destroy equipment_equipment" do
    assert_difference('Equipment::Equipment.count', -1) do
      delete :destroy, id: @equipment_equipment
    end

    assert_redirected_to equipment_equipment_index_path
  end
end
