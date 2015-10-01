class PointsController < ApplicationController
  def new
    @point = Point.new
  end

  def create
    @point = Point.new
    @point.value = 1
    @point.receiver_id = params["receiver_id"]
    @point.event_id = params["event_id"]
    @point.sender_id = current_user.id
    @point.save
    redirect_to root_url
  end

  def show

  end

  def index
    @point = Point.all
  end

end
