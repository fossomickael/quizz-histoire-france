class StatsController < ApplicationController
  def question_answered
    choice = Choice.find(params[:choice_id])
    seconds = params[:seconds]
    question_chosen_answer = QuestionsChosenAnswer.new(choice: choice, seconds: seconds)
    if question_chosen_answer.save
      render json: question_chosen_answer.to_json(except: %i[created_at updated_at]), status: :ok
    else
      render json: { errors: @question_chosen_answer.errors }
    end
  end
end
