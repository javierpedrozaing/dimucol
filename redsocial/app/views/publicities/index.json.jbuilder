json.array!(@publicities) do |publicity|
  json.extract! publicity, :id, :logo, :nombreComercial, :email, :direccion, :telefono, :celular, :web, :experiencia, :repertorio
  json.url publicity_url(publicity, format: :json)
end
