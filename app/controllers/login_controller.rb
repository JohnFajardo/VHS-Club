class LoginController < ApplicationController
  def new
  end

  def create
    @customer = Customer.find_by(username: params[:username])
    if @customer && @customer.authenticate(params[:password])
      flash["message"] = "Successfully logged in #{@customer.name}!"
      redirect_to movies_path
    else
      flash["message"] = "Incorrect Username or Password"
      redirect_to new_login_path
    end
  end

  def destroy
    logout
    redirect_to new_login_path
  end
end
