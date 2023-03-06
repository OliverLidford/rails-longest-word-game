class GamesController < ApplicationController
  def new
    letters = ('a'..'z').to_a
    @characters = Array.new(10) { letters.sample }
  end

  def score

    #GET THE USER INPUR AND COMPARE IT TO THE ABOVE ARRAY
    input = params[:guess]
    random_letters = params[:letters]
    @score = 0
    input.chars.each do |letter|
      @score += 1 if random_letters.include?(letter)
    end
  end
end
