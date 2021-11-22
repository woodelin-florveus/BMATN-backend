class TrainersController < ApplicationController
    def index
        @trainers = Trainer.all

        render json: @trainers
    end

    def show 
        @trainer = Trainer.find(params[:id])

        render json: @trainer
    end

    def destroy

        byebug
     
        @trainer = Trainer.destroy(params[:id])

        render json: @trainer

    end

    def update

       

        @trainer = Trainer.find(params[:id])

        # byebug

        @trainer.appointments.update(date: params[:date], user_id: params[:user_id])

        render json: @trainer
    end






end
