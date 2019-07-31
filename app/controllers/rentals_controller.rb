class RentalsController < ApplicationController
  before_action :find_rental, only: [:show, :edit, :update, :destroy]
  before_action :authorized

  def index
    @rentals = Rental.all
  end

  def show
  end

  def new
    @rental = Rental.new
    @customers = Customer.all
    @movies = Movie.all
  end

  def create
    @rental = Rental.create(rental_params)
    redirect_to @rental
  end

  def edit
    @customers = Customer.all
    @movies = Movie.all
  end

  def update
    @rental = Rental.update(rental_params)
    redirect_to @rental
  end

  def destroy
    @rental.destroy
    redirect_to rentals_path
  end

  private

  def find_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:customer_id, :movie_id, :rental_length)
  end
end
