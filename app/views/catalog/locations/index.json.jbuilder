json.array!(@catalog_locations) do |catalog_location|
  json.extract! catalog_location, :id, :Laboratory_department, :Manager, :Mail, :Device
  json.url catalog_location_url(catalog_location, format: :json)
end
