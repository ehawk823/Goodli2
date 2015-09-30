class PointsController < ApplicationController
  def new
    @point = Point.new
  end

  def create
  end

  def show
    
  end

  def index
    @point = Point.all
  end

end