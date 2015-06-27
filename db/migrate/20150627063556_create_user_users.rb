class CreateUserUsers < ActiveRecord::Migration
  def change
    create_table :user_users do |t|
      t.string :Name
      t.string :Mail
      t.string :Login
      t.integer :id_Supplier
      t.integer :id_Equipment
      t.integer :id_Contract_type
      t.integer :id_Location

      t.timestamps null: false
    end
  end
end
