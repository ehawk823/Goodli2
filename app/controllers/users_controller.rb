class UsersController < ApplicationController
  def show
  end

  def update
    current_user.name = params[:user][:name]
    @name = current_user.name
    current_user.location = params[:user][:location]
    @location = current_user.location
  end

end
