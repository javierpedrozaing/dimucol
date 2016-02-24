json.array!(@notifications) do |notification|
  json.extract! notification, :id, :tipoNotificacion, :fecha, :texto
  json.url notification_url(notification, format: :json)
end
