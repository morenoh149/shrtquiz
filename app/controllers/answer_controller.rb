class AnswerController < ApplicationController
	def new
    @answer = Answer.new
    @quiz = Quiz.find(params[:quiz_id])
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answer }
    end
  end

  # POST /availabilities
  # POST /availabilities.json
  def create
    @answer = Answer.new
    @quiz = Quiz.find(params[:quiz_id])
    
    respond_to do |format|
      if @answer.save
        format.html { redirect_to '/index.html',
                      notice: 'Thanks for answering a ShrtQuiz!' }
        format.json { render json: @answer,
                      status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors,
                      status: :unprocessable_entity }
      end
    end
  end
end
