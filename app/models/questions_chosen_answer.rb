class QuestionsChosenAnswer < ApplicationRecord
  belongs_to :choice

  validates :seconds, numericality: true
  validates :seconds, inclusion: 0..30
end
