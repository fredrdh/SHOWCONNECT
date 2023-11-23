class AppointmentsController < ApplicationController

def index
  @appointments = Appointment.all
end

def show
  @appointment = Appointment.find(params[:id])
end

def new
  @appointment = Appointment.new
 end

def create
  @appointment = Appointment.new(appointment_params)
  @appointment.user = current_user
  if @appointment.save
    redirect_to appointment_path(@appointment)
  else
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

  private

def appointment_params
  params.require(:appointment).permit(:stage_name, :category, :specialty, :description, :local, :event_date, :price)
end
end
