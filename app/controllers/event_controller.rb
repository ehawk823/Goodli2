class EventController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
    redirect_to root_path
  end

  def create
    new_event = params.require(:event).permit(:title, :description)
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Your event was saved"
      redirect_to @event
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :description)
  end
end
