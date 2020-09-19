class PagesController < ApplicationController
  def home
  end

  def yello
    @user_name = params[:user_name]
    @greeting = [
      "Hello, sunshine!",
      "Howdy, stranger!",
      "Howdy-doody!",
      "Ahoy, matey!",
      "GOOOOOD MORNING, VIETNAM!",
      "Yellow",
      "I'm BATman! Nice to meet you,",
      "Whaddup!",
      "Oh, yoooouhoooo!"
    ].sample
  end
end
