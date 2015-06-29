class CreateLocationLocations < ActiveRecord::Migration
  def change
    create_table :location_locations do |t|
      t.string :Laboratory_Department
      t.string :Manager
      t.string :Mail
      t.string :User_id
      t.string :Device_id
      t.string :Contract_type_id
      t.string :Supplier_id

      t.timestamps null: false
    end
  end
end
