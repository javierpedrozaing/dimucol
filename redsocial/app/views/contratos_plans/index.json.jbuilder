json.array!(@contratos_plans) do |contratos_plan|
  json.extract! contratos_plan, :id, :valorTotal
  json.url contratos_plan_url(contratos_plan, format: :json)
end
