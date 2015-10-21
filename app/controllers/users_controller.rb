class UsersController < ApplicationController
  def show
    @id = params[:id]
    @user = User.find_by_id(@id)
    @points_received = Point.where(receiver_id: @id)
  end

  def index
    @users = User.all
  end

  def update
    new_update = UserUpdateService.new(params, current_user)
    if params[:user][:image] != nil
      new_update.update_image
      redirect_to :back
    end 
    new_update.update_name
    new_update.update_location
    new_update.update_mission
    @name = current_user.name
    @location = current_user.location
    @mission = current_user.bio
  end
end
