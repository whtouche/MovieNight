class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    #magic
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      redirect_to event_path(@event), notice: "Event Created Successfully"
    else
      render :new, notice: "Failure!"
    end
  end

  def join
    event = Event.find(params[:event_id])
    rsvp = Rsvp.new(event_id: event.id, user_id: current_user.id)
    if rsvp.save
      redirect_to root_path
    else
      redirect_to event_path(event), notice: "Failed to Join I guess"
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :event_description, :movie, :theatre,
      :date)
  end
end
