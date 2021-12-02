class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.text :libelle
      t.boolean :is_right_answer
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
