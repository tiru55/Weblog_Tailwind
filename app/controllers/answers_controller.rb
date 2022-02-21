class AnswersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_question

    def create
        @answer = @question.answers.new(answer_params)
        @answer.user = current_user
        @answer.save
        redirect_back(fallback_location: root_path)
    end

    private
    
    def answer_params
        params.require(:answer).permit(:answer, :question_id)
    end
    
    def set_question
        @question = Question.find(params[:question_id])
    end
end
