require_relative 'card'

class Deck
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  attr_accessor :deck

  def initialize
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    @deck = cards.shuffle!
  end


  def deal(num)
    @deck.pop(num)
  end

end

# require "pry"
# binding.pry
