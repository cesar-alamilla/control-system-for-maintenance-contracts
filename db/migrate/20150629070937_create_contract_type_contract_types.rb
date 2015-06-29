class CreateContractTypeContractTypes < ActiveRecord::Migration
  def change
    create_table :contract_type_contract_types do |t|
      t.string :Type
      t.string :Supplier_id
      t.string :Device_id
      t.string :User_id
      t.string :Location_id

      t.timestamps null: false
    end
  end
end
