json.array!(@catalog_suppliers) do |catalog_supplier|
  json.extract! catalog_supplier, :id, :Bussines_name, :Contact, :Phone, :Mail, :Contract_type_id
  json.url catalog_supplier_url(catalog_supplier, format: :json)
end
