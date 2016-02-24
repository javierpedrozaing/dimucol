json.array!(@messages) do |message|
  json.extract! message, :id, :text, :fecha, :file_name, :foto
  json.url message_url(message, format: :json)
end
