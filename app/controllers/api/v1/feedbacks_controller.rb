class Api::V1::FeedbacksController < ApplicationController
    skip_before_action :authorized

    def index
        feedbacks = Feedback.all
        render json: feedbacks, except: [:created_at, :updated_at]
    end

    def create
        feedback = Feedback.create!(feedback_params)
        if feedback.valid?
            render json: feedback,  except: [:created_at, :updated_at]
        else
            render json: {errors: feedback.errors} 
        end 
    end

    def show
        feedback = Feedback.find(params[:id])
        render json: feedback, except: [:created_at, :updated_at]
    end

    def update
        feedback = Feedback.find(params[:id])
        if (feedback.update!(feedback_params))
            render json: feedback
        else
            render json: {errors: feedback.errors} 
        end 
    end 

    def destroy
        allfeedback = Feedback.all
        feedback = Feedback.find(params[:id])
        feedback.destroy
        render json: allfeedback
    end

    private

    def feedback_params
        params.require(:feedback).permit(:comment,:user_id,:post_id,:pro,:con)
    end
end


