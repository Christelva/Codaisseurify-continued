json.extract! song, :id :title, :created_at, :updated_at
json.url artist_url(song, format: :json)
