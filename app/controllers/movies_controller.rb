class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :delete]

  def index
    @movies = Movie.all
  end

  def show
    cookies[:movie_id] = @movie.id
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to @movie
  end

  def edit
  end

  def update
    @movie.update(rental_params)
    redirect_to @movie
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :release_date, :genre, :overview, :poster_path, :rating)
  end

end
