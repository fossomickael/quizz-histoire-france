class QuestionCategory < ApplicationRecord
  belongs_to :question
  belongs_to :category

  validates :question, uniqueness: { scope: :category,
    message: "this question category has already been created" }
end
