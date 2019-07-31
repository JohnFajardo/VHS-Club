class CustomersController < ApplicationController
  before_action :find_customer, only: [:show, :edit, :update, :destroy]
  before_action :authorized, only: [:index, :show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.valid?
      flash["message"] = "Successfully created an account!"
      redirect_to new_login_path
    else
      flash["message"] = "Unsuccessful, please try again."
      redirect_to new_customer_path
    end
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer
    else
      redirect_to edit_customer_path(@customer)
    end
  end

  def destroy
    @customer.destroy
    redirect_to new_login_path
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :username, :password)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end
end
