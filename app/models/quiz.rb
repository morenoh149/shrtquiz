class Quiz < ActiveRecord::Base
  attr_accessible :option1, :option2, :option3, :option4, :question

  validates(:option1, presence: true)
  validates(:option2, presence: true)
  validates(:option3, presence: true)
  validates(:option4, presence: true)
  validates(:question, presence: true)
end
