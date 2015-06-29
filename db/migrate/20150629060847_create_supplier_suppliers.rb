class CreateSupplierSuppliers < ActiveRecord::Migration
  def change
    create_table :supplier_suppliers do |t|
      t.string :Bussines_name
      t.string :Contact
      t.string :Phone
      t.string :Mail
      t.string :User_id
      t.string :Device_id
      t.string :Contract_type_id
      t.string :Location_id

      t.timestamps null: false
    end
  end
end
