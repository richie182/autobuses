json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usuario, :contraseña, :nombre, :edad, :telefono, :correo, :direccion, :puntos
  json.url usuario_url(usuario, format: :json)
end
