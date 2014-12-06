json.array!(@boletos) do |boleto|
  json.extract! boleto, :id, :folio, :usuario, :id_trayecto, :fecha_venta, :total, :puntos
  json.url boleto_url(boleto, format: :json)
end
