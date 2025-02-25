json.extract! articoli, :id, :titolo, :descrizione, :prezzo, :created_at, :updated_at
json.url articoli_url(articoli, format: :json)
