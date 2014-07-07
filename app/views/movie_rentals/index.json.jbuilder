json.array!(@movie_rentals) do |movie_rental|
  json.extract! movie_rental, :id, :user_id, :movie_id
  json.url movie_rental_url(movie_rental, format: :json)
end
