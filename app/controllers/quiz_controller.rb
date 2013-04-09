class QuizController < ApplicationController
  def index
  end
  def new
    @quiz = Quiz.new
  end
  def create
    @quiz = Quiz.new(params[:quiz])
    if @quiz.save
      flash[:success] = "Quiz created!"
      redirect_to quiz_url(@quiz)
    else
      flash[:error] = "Invalid new quiz data"
      redirect_to new_quiz_url
    end
  end
  def show
    @quiz = Quiz.find(params[:id])
  end
end
