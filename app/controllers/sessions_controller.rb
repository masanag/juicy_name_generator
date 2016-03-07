class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      log_in admin
      redirect_to admin
    end
  end

  def destroy
    binding.pry
  end
end
