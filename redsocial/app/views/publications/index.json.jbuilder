json.array!(@publications) do |publication|
  json.extract! publication, :id, :texto, :fecha, :tipoPublicacion, :like, :imagen, :video, :ubicacion
  json.url publication_url(publication, format: :json)
end
