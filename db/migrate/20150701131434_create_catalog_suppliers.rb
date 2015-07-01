class CreateCatalogSuppliers < ActiveRecord::Migration
  def change
    create_table :catalog_suppliers do |t|
      t.string :Bussines_name
      t.string :Contact
      t.string :Phone
      t.string :Mail
      t.string :Contract_type_id

      t.timestamps null: false
    end
  end
end
