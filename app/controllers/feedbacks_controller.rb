class FeedbacksController < ApplicationController
    def index
        @feedbacks = Feedback.all

        render json: @feedbacks
    end

    def show
        @feedback = Feedback.find(params[:id])

        render json: @feedback
    end
end
