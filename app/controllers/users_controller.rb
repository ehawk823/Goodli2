class UsersController < ApplicationController
  def show
  end

  def update
    current_user.name = params[:user][:name]
    @name = current_user.name
  end

end
