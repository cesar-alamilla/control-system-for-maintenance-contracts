class CreateSupplierSuppliers < ActiveRecord::Migration
  def change
    create_table :supplier_suppliers do |t|
      t.string :Bussines_name
      t.string :Contact
      t.string :Phone
      t.string :Mail
      t.integer :id_User
      t.integer :id_Equipment
      t.integer :id_Contract_type
      t.integer :id_Location

      t.timestamps null: false
    end
  end
end
