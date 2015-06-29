class CreateUserUsers < ActiveRecord::Migration
  def change
    create_table :user_users do |t|
      t.string :Name
      t.string :Mail
      t.string :Login
      t.string :Supplier_id
      t.string :Device_id
      t.string :Contract_type_id
      t.string :Location_id

      t.timestamps null: false
    end
  end
end
