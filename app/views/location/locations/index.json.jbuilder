json.array!(@location_locations) do |location_location|
  json.extract! location_location, :id, :Laboratory_Department, :Manager, :Mail, :id_User, :id_Equipment, :id_Contract_type, :id_Supplier
  json.url location_location_url(location_location, format: :json)
end
