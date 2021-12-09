class CreateQuestionsChosenAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :questions_chosen_answers do |t|
      t.references :choice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
