class QuestionsController < ApplicationController
  def random
    @questions = Question.order("RANDOM()").limit(10)
    unwanted_fields = %i[created_at updated_at]
    render json: @questions.to_json(except: unwanted_fields, include: { choices: { except: unwanted_fields } })
  end

  def category
    category = Category.find(params[:category_id])
    @questions = category.questions
    render json: @questions.to_json
  end
end
