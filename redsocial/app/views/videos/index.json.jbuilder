json.array!(@videos) do |video|
  json.extract! video, :id, :file_name, :url, :like, :description, :reference
  json.url video_url(video, format: :json)
end
