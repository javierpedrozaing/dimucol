json.array!(@roles) do |role|
  json.extract! role, :id, :nameRole
  json.url role_url(role, format: :json)
end
