json.array!(@trayectos) do |trayecto|
  json.extract! trayecto, :id, :id_trayecto, :idterminal, :idterminal2, :hora_salida, :hora_llegada, :precio, :puntos, :idautobus
  json.url trayecto_url(trayecto, format: :json)
end
