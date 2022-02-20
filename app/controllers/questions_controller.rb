class QuestionsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @questions = Question.all
    end

    def new
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        @question.user_id = current_user.id
        if @question.save
            flash[:notice] = "Your Question has been Posted.."
            redirect_to @question
        else
            redirect_to 'index'
        end
    end

    def show
        @question = Question.find(params[:id])
    end

    private

    def question_params
        params.require(:question).permit(:question, :visibility, :category, :tags)
    end
end
