json.array!(@equipment_equipment) do |equipment_equipment|
  json.extract! equipment_equipment, :id, :Name, :Stock_number, :Location, :Provider_who_maintains, :id_user, :id_Supplier_integer, :id_Contract_type, :id_location
  json.url equipment_equipment_url(equipment_equipment, format: :json)
end
