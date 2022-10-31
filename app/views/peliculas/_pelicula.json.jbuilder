json.extract! pelicula, :id, :name, :duration, :description, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)
