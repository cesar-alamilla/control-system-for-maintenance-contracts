class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :Laboratory_Department
      t.string :Manager
      t.string :Mail
      t.integer :id_User
      t.integer :id_Equipment
      t.integer :id_Contract_type
      t.integer :id_Supplier

      t.timestamps null: false
    end
  end
end
