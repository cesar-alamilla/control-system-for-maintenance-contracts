class CreateCatalogContractTypes < ActiveRecord::Migration
  def change
    create_table :catalog_contract_types do |t|
      t.string :Type
      t.string :Supplier

      t.timestamps null: false
    end
  end
end
