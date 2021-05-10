class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coachAnswer = params[:ask]
    @answers = params[:question]
    if @answers == "I am going to work"
      return @coachAnswer = "Great!"
    elsif @answers.end_with?("?") 
      return @coachAnswer = "Silly question, get dressed and go to work!"
    else 
        @coachAnswer = "I don't care, get dressed and go to work!"
    end
  end
end

