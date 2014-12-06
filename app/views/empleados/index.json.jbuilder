json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :usuario, :contraseña, :nombre, :telefono, :corre, :direccion, :hrtrabajada, :categoria
  json.url empleado_url(empleado, format: :json)
end
