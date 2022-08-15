# frozen_string_literal: true

# questions
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @quest = params[:question_asked]
    @quest_up = params[:question_asked].upcase
    @respost = @quest == @quest_up ? coach_answer_enhanced(@quest) : @respost = coach_answer(@quest)
  end
end

def coach_answer(your_message)
  your_message.include?('?') && 'Silly question, get dressed and go to work!'
  your_message == 'I am going to work right now!' && exit
  "I don't care, get dressed and go to work!"
end

def coach_answer_enhanced(your_message)
  your_message == 'I AM GOING TO WORK RIGHT NOW!' && exit
  'I can feel your motivation!'
end
