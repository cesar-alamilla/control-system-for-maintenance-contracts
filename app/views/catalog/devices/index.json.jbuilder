json.array!(@catalog_devices) do |catalog_device|
  json.extract! catalog_device, :id, :Name, :Stock_number, :Location, :Provider_who_maintains, :User_id, :Supplier_id, :Location_id
  json.url catalog_device_url(catalog_device, format: :json)
end
