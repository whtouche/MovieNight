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
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event), notice: "Event Created Successfully"
    else
      render :new, notice: "Failure!"
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :event_description, :movie, :theatre,
      :date)
  end
end
