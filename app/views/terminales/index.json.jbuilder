json.array!(@terminales) do |terminale|
  json.extract! terminale, :id, :idterminal, :nombreterminal, :telefono, :direccion
  json.url terminale_url(terminale, format: :json)
end
