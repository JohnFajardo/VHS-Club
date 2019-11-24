# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Customer.destroy_all

Customer.create(name: "John", username: "fajardocj@gmail.com", password: "abc123")
Customer.create(name: "Peter", username: "peter@gmail.com", password: "abc123")
Customer.create(name: "Bobby", username: "bobby@gmail.com", password: "abc123")
Customer.create(name: "Megan", username: "megan@gmail.com", password: "abc123")
Customer.create(name: "Alex", username: "alex@gmail.com", password: "abc123")
Customer.create(name: "Amrit", username: "amrit@gmail.com", password: "abc123")
Customer.create(name: "Joe", username: "joe@gmail.com", password: "abc123")

Tmdb::Movie.popular.each do |movie|
  @movie = Movie.create(title: movie.title, release_date: movie.release_date, overview: movie.overview, poster_path: movie.poster_path, rating: movie.vote_average)

  movie_genres = ""
  chosen_movie = Tmdb::Movie.detail(movie.id)

  chosen_movie["genres"].each do |genre_hash|
    if genre_hash == chosen_movie["genres"].last
      movie_genres += "#{genre_hash["name"]}"
    else
      movie_genres += "#{genre_hash["name"]}, "
    end
  end

  @movie.update(genre: movie_genres)
end

25.times do
  Rental.create(customer_id: rand(2..7), movie_id: rand(1..20), rental_length: rand(1..20))
end