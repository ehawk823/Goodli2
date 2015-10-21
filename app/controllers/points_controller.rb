class PointsController < ApplicationController
  def new
    @point = Point.new
  end

  def create
    @point = Point.new
    @point.value = 1
    @point.receiver = User.find(params["receiver_id"])
    @event = Event.find(params["events"]["id"])
    @point.sender = User.find(params["sender_id"])
    @user = User.find(params["receiver_id"])
    karma_increment
    @event.points << @point
    @point.save
    @points_received = Point.where(receiver_id: params["receiver_id"])
  end

  def show
  end

  def index
    @point = Point.all
  end

  def karma_increment
    @user.giveable_karma += 2
    @user.save
    @point.sender.giveable_karma -= 1
    @point.sender.save
  end

end
