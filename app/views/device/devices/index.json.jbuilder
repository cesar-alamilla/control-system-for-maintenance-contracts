json.array!(@device_devices) do |device_device|
  json.extract! device_device, :id, :Name, :Stock_number, :Location, :Provider_who_maintains, :User_id, :Supplier_id, :Contract_type_id, :Location_id
  json.url device_device_url(device_device, format: :json)
end
