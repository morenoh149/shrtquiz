class Answer < ActiveRecord::Base
  attr_accessible :option
  validates :option, {:presence => true,
                      :numericality => { :greater_than_or_equal => 1,
                                         :less_than_or_equal => 4 }}
  belongs_to :quiz
end
