class Question < ApplicationRecord
  has_many :choices, dependent: :destroy
  has_many :question_categories, dependent: :destroy
  has_many :categories, through: :question_categories
end
