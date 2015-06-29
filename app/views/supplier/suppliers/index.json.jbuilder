json.array!(@supplier_suppliers) do |supplier_supplier|
  json.extract! supplier_supplier, :id, :Bussines_name, :Contact, :Phone, :Mail, :User_id, :Device_id, :Contract_type_id, :Location_id
  json.url supplier_supplier_url(supplier_supplier, format: :json)
end
