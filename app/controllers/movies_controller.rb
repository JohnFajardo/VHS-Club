class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]

  def index
    @popular_movies = Tmdb::Movie.popular
    @upcoming_movies = Tmdb::Movie.upcoming
    @top_rated_movies = Tmdb::Movie.top_rated
  end

  def show
  end

  private

  def find_movie
    @movie = Tmdb::Movie.detail(params[:id])
  end

end
