class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :quiz_id
      t.integer :option

      t.timestamps
    end
  end
end
