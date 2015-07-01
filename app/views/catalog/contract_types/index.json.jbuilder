json.array!(@catalog_contract_types) do |catalog_contract_type|
  json.extract! catalog_contract_type, :id, :Type, :Supplier
  json.url catalog_contract_type_url(catalog_contract_type, format: :json)
end
