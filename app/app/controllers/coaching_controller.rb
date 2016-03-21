class CoachingController < ApplicationController
  def ask

  end

  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def coach_answer(your_message)

    if your_message.downcase == "i am going to work right now!"
      return "Finally, now leave me alone!"
    elsif your_message.end_with? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)

    if your_message.upcase == your_message
      return "I can feel your motivation! #{answer}"
    else
      answer
    end

  end
end

