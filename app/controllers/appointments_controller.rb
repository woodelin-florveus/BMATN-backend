class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all

        render json: @appointments
    end

    def show 
        @appointment = Appointment.find(params[:id])

        render json: @appointment
    end

    def create
        # byebug
        @appointment = Appointment.create(trainer_id: params[:trainer_id], location: params[:location], date: params[:date], time: params[:time], user_id: params[:user_id])

        render json: @appointment
    end

    def destroy
        # byebug

        @appointment = Appointment.destroy(params[:id])

        render json: @appointment
        
    end

    def update

        byebug

        @appointment = Appointment.find(params[:id])

        @appointment.update(trainer_id: params[:trainer_id], date: params[:date], user_id: params[:user_id])

        render json: @appointment
    end

end
