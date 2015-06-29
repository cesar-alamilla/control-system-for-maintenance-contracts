class CreateDeviceDevices < ActiveRecord::Migration
  def change
    create_table :device_devices do |t|
      t.string :Name
      t.string :Stock_number
      t.string :Location
      t.string :Provider_who_maintains
      t.string :User_id
      t.string :Supplier_id
      t.string :Contract_type_id
      t.string :Location_id

      t.timestamps null: false
    end
  end
end
