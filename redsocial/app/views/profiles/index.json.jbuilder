json.array!(@profiles) do |profile|
  json.extract! profile, :id, :fotoPerfil, :fotoPortada, :descripcion, :fechaNacimiento, :facebook, :twitter, :google, :youtube, :instagram, :celular, :telefono, :lugarNacimiento
  json.url profile_url(profile, format: :json)
end
