class AddSecondsToQuestionsChosenAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :questions_chosen_answers, :seconds, :integer
  end
end
