json.array!(@supplier_suppliers) do |supplier_supplier|
  json.extract! supplier_supplier, :id, :Bussines_name, :Contact, :Phone, :Mail, :id_User, :id_Equipment, :id_Contract_type, :id_Location
  json.url supplier_supplier_url(supplier_supplier, format: :json)
end
