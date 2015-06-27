json.array!(@contract_type_contract_types) do |contract_type_contract_type|
  json.extract! contract_type_contract_type, :id, :Type, :id_Supplier, :id_Equipment, :id_User, :id_location
  json.url contract_type_contract_type_url(contract_type_contract_type, format: :json)
end
