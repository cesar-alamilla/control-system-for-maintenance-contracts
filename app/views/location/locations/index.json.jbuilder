json.array!(@location_locations) do |location_location|
  json.extract! location_location, :id, :Laboratory_Department, :Manager, :Mail, :User_id, :Device_id, :Contract_type_id, :Supplier_id
  json.url location_location_url(location_location, format: :json)
end
