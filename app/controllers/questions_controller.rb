class QuestionsController < ApplicationController
  def ask
    @questions = []
    if params[:question]
      @questions = @questions.select { |question| question.start_with?(params[:question]) }
    end
  end

  def answer
    @question = params[:questions]
    if @question == 'I am going to work'
      @answer = 'Great'
    elsif @question == 'I am going to work?'
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
