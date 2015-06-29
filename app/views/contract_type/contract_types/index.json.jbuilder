json.array!(@contract_type_contract_types) do |contract_type_contract_type|
  json.extract! contract_type_contract_type, :id, :Type, :Supplier_id, :Device_id, :User_id, :Location_id
  json.url contract_type_contract_type_url(contract_type_contract_type, format: :json)
end
