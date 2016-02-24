json.array!(@anuncios) do |anuncio|
  json.extract! anuncio, :id, :tipoAnuncio, :ubicacion, :fechaInicial_datetime, :fechaFinal, :valor, :caracteristica, :reference
  json.url anuncio_url(anuncio, format: :json)
end
