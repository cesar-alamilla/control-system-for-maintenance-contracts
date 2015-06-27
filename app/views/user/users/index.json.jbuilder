json.array!(@user_users) do |user_user|
  json.extract! user_user, :id, :Name, :Mail, :Login, :id_Supplier, :id_Equipment, :id_Contract_type, :id_Location
  json.url user_user_url(user_user, format: :json)
end
