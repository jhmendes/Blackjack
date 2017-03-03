require_relative 'deck'

class Hand

  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    score = 0
      @cards.each do |card|
        if card.rank == "J" || card.rank == "Q" || card.rank == "K"
          score += 10
        elsif
          card.rank == "A" && score < 11
          score += 11
        elsif
          card.rank == "A" && score >= 11
          score += 1
        else
          score += card.rank.to_i
        end
      end
    score
  end
end

# require 'pry'
# binding.pry
