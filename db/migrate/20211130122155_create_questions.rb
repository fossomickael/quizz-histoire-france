class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :libelle
      t.integer :difficulty
      t.text :explication
      t.timestamps
    end
  end
end
