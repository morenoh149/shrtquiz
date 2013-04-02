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
      flash[:error] = "Unable to save micropost"
      redirect_to quiz_url(@quiz)
    end
  end
  def show
    @quiz = Quiz.find(params[:id])
  end
end
