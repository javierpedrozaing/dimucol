json.array!(@albums) do |album|
  json.extract! album, :id, :nombre
  json.url album_url(album, format: :json)
end
