# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Customer.destroy_all

Customer.create(name: "Petaaa", username: "peter@gmail.com", password: "peterpass")
Customer.create(name: "John", username: "john@gmail.com", password: "johnpass")
Customer.create(name: "Bobby", username: "bobby@gmail.com", password: "bobbypass")

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
