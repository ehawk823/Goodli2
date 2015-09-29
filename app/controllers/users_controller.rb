class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show, :log_in]

  def new
  end

  def create
  end

  def show
  end

  def log_in
  end

  def sign_up
  end

end
