class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def new
  end

  def create
  end

  def show
  end

  def sign_up
  end

end
