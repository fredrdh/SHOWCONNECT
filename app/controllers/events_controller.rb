class EventsController < ApplicationController

def index
  @events = Event.all

def show
  @event = Event.find(params[:id])

def new
  @event = Event.new

def create
  @event = Event.new(event_params)
  @event.user = current_user
  if @event.save
    redirect_to event_path(@event)
  else
    render :new
  end

def edit
  @event = Event.find(params[:id])

def update
  @event = Event.find(params[:id])
  @event.update(event_params)
  redirect_to event_path(@event)

def destroy
  @event = Event.find(params[:id])
  @event.destroy
  redirect_to events_path
end

private

def event_params
  params.require(:event).permit(:stage_name, :category, :specialty, :description, :local, :event_date, :price)

end
