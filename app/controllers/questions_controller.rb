class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @answer = ""
    @ask = params[:answer]

    case
    when @ask == "I am going to work"
      @answer = "Great!"

    when @ask[@ask.to_s.length - 1] == "?"
      @answer = "Silly question, get dressed and go to work!"

    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # raise
    return @answer

  end

end
