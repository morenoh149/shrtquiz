class QuizController < ApplicationController
  def index
  end
  def new
    @quiz = Quiz.new
  end
  def create
    my_quiz = Quiz.new(params[:quiz])
    redirect_to quiz_path
  end
  def show
  end
end
