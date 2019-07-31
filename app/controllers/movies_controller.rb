class MoviesController < ApplicationController
  before_action :find_movie, only: [:edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Tmdb::Movie.detail(params[:id])
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
    @movie.update(movie_params)
    redirect_to @movie
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :genre)
  end

end
