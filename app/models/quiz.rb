class Quiz < ActiveRecord::Base
  attr_accessible :answer1, :answer2, :answer3, :answer4, :question

  validates(:answer1, presence: true)
  validates(:answer2, presence: true)
  validates(:answer3, presence: true)
  validates(:answer4, presence: true)
  validates(:question, presence: true)
end
