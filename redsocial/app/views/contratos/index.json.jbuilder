json.array!(@contratos) do |contrato|
  json.extract! contrato, :id, :fechaInicial_datetime, :fechaFinal, :valorTotal, :descuento, :estado
  json.url contrato_url(contrato, format: :json)
end
