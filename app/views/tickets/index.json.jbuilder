json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :folio, :nombre, :correo, :vendido, :trayecto, :precio, :puntos, :viaje, :vendido
  json.url ticket_url(ticket, format: :json)
end
