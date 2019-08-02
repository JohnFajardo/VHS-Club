class ApplicationController < ActionController::Base
  before_action :setup_auth_variables

  def setup_auth_variables
    @customer_id = session[:customer_id]
    @logged_in = !!@customer_id
    if @logged_in
      @current_customer = Customer.find(@customer_id)
    end
  end

  def authorized
    if !@logged_in
      flash["message"] = "You must be logged in!"
      return redirect_to new_login_path
    end
  end

  def logout
    session[:customer_id] = nil
  end
end
