json.array!(@respuesta_comentarios) do |respuesta_comentario|
  json.extract! respuesta_comentario, :id, :texto, :like, :fecha
  json.url respuesta_comentario_url(respuesta_comentario, format: :json)
end
