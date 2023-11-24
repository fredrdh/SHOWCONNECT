class AppointmentsController < ApplicationController

def index
  @appointments = Appointment.all
end

def show
  @appointment = Appointment.find(params[:id])
end

# def new
#   @appointment = Appointment.new
#  end

def create
  @event = Event.find(params[:event_id])
  @appointment = Appointment.new
  @appointment.user = current_user
  @appointment.event = @event
  if @appointment.save
    redirect_to appointment_path(@appointment)
  else
    raise
    render :new
  end
end

def edit
  @appointment = Appointment.find(params[:id])
end

def update
  @appointment = Appointment.find(params[:id])
  @appointment.update(appointment_params)
  redirect_to appointment_path(@appointment)
end

def destroy
  @appointment = Appointment.find(params[:id])
  @appointment.destroy
  redirect_to appointments_path
end

def checkout
  @appointment = Appointment.find(params[:appointment_id])
end

# def date
#   timeslot.to_date
# end

# def time
#   timeslot.strftime("%H:%M")
# end

  private

def appointment_params
  params.require(:appointment).permit(:event_id, :user_id, :timeslot)
end
end
