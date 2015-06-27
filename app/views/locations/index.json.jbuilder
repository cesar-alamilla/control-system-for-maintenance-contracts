json.array!(@locations) do |location|
  json.extract! location, :id, :Laboratory_Department, :Manager, :Mail, :id_User, :id_Equipment, :id_Contract_type, :id_Supplier
  json.url location_url(location, format: :json)
end
