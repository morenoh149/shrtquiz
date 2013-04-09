class RenameAnswersToOption < ActiveRecord::Migration
  def change
    rename_column :quizzes, :answer1, :option1
    rename_column :quizzes, :answer2, :option2
    rename_column :quizzes, :answer3, :option3
    rename_column :quizzes, :answer4, :option4
  end
end
