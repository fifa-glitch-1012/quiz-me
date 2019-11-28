class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    add_reference :quizzes, :user, foreign_key: true
    create_table :quizzes do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
