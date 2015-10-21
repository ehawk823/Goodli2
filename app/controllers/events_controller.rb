class EventsController < ApplicationController
  def index
    @events = Event.all
    @points = Point.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.date = params[:date]["date(3i)"] + "/" + params[:date]["date(2i)"] + "/" + params[:date]["date(1i)"] + "at" + params[:date]["date(4i)"] + ":" + params[:date]["date(5i)"]
    @event.title = params["title"]
    @event.location = params["location"]
    @event.description = params["description"]
    @event.host = User.find(params["host_id"])
    @event.users << current_user
    unless @event.save
      render 'error.js'
    end
  end

  def rsvp
    @event = Event.find(params["id"])
    @event.users << current_user
    @event.save
    current_user.save
  end

  def show
    @event = Event.find(params["id"])
  end

  def destroy
    @event = Event.find(params["event_id"])
    @event.destroy
    redirect_to root_url
  end

private

  def event_params
      params.require(:event).permit(:title, :location, :description)
  end

end
