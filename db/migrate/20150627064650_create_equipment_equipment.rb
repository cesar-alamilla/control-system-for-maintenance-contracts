class CreateEquipmentEquipment < ActiveRecord::Migration
  def change
    create_table :equipment_equipment do |t|
      t.string :Name
      t.integer :Stock_number
      t.string :Location
      t.string :Provider_who_maintains
      t.integer :id_user
      t.string :id_Supplier_integer
      t.integer :id_Contract_type
      t.integer :id_location

      t.timestamps null: false
    end
  end
end
