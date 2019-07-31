class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]

  def index
    @movies = Movie.all
  end

  def show
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :release_date, :genre, :overview, :poster_path, :rating)
  end

end
