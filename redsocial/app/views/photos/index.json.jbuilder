json.array!(@photos) do |photo|
  json.extract! photo, :id, :fiel_name, :content_type, :file_size, :reference
  json.url photo_url(photo, format: :json)
end
