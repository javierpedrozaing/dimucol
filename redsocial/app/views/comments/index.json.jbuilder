json.array!(@comments) do |comment|
  json.extract! comment, :id, :texto, :like, :fecha, :reference
  json.url comment_url(comment, format: :json)
end
