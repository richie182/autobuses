json.array!(@terminal_llegadas) do |terminal_llegada|
  json.extract! terminal_llegada, :id, :idterminal2, :nombreterminal2, :telefono2, :direccion2
  json.url terminal_llegada_url(terminal_llegada, format: :json)
end
