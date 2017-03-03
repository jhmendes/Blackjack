class Card

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def display
    "#{@rank}#{@suit}"
  end

  def card_type?
    if ["J", "Q", "K"].include?(@rank)
      return "Its a Face Card!"
    elsif
      ["A"].include?(@rank)
      return "Its an Ace!"
    else
      return "Its a Number Card!"
    end
  end

end
#
# require 'pry'
# binding.pry
