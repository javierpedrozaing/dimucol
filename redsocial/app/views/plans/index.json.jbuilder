json.array!(@plans) do |plan|
  json.extract! plan, :id, :nombre, :descripcion, :valor
  json.url plan_url(plan, format: :json)
end
