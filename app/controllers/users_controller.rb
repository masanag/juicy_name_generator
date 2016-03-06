class UsersController < ApplicationController
  def index
    @user = User.new(params[:name]) if params[:name]
  end
end
