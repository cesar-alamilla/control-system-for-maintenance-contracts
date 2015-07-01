class CreateCatalogLocations < ActiveRecord::Migration
  def change
    create_table :catalog_locations do |t|
      t.string :Laboratory_department
      t.string :Manager
      t.string :Mail
      t.string :Device

      t.timestamps null: false
    end
  end
end
