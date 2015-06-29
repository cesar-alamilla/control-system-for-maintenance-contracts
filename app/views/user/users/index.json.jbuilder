json.array!(@user_users) do |user_user|
  json.extract! user_user, :id, :Name, :Mail, :Login, :Supplier_id, :Device_id, :Contract_type_id, :Location_id
  json.url user_user_url(user_user, format: :json)
end
