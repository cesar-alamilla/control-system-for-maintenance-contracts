class CreateContractTypeContractTypes < ActiveRecord::Migration
  def change
    create_table :contract_type_contract_types do |t|
      t.string :Type
      t.integer :id_Supplier
      t.integer :id_Equipment
      t.integer :id_User
      t.integer :id_location

      t.timestamps null: false
    end
  end
end
