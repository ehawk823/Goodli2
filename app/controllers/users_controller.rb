class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show, :log_in]

  def new
  end

  def create
  end

  def show
  end

  def log_in
    redirect_to action: "show"
  end

  def sign_out
  end

  def sign_up
  end

end
