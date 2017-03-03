require_relative 'card'
require_relative 'deck'
require_relative 'hand'

game_deck = Deck.new
player_cards = game_deck.deal(2)
computer_cards = game_deck.deal(2)
player = Hand.new(player_cards)
computer = Hand.new(computer_cards)

puts "Welcome to Blackjack!"
puts
#################PLAYER SECTION################
puts "Player was dealt #{player_cards[0].display}"
puts "Player was dealt #{player_cards[1].display}"
puts "Player Score: #{player.calculate_hand}"
puts
print "Hit or stand (H/S): "
player_input = gets.chomp.downcase
puts

if player_input == "s"
  puts "Player Stands!"
  puts
  puts "Player Score: #{player.calculate_hand}"
end

while player_input != "s" do
  if player_input == "h"
    break
  end
  puts "Invalid Entry.  Please Try Again."
  print "Hit or Stand (H/S): "
  puts
  player_input = gets.chomp.downcase

  if player_input == "s"
    puts "Player Stands!"
    puts "Player Score: #{player.calculate_hand}"
    puts
    break
  end
end

while player_input == "h" do

  player.cards << game_deck.deal(1)[-1]
    puts "Player was dealt #{player_cards[-1].display}"
    puts "Player Score: #{player.calculate_hand}"
    puts

  if player.calculate_hand > 21
      puts "Bust! You lose!"
      exit
  end

    print "Hit or Stand (H/S): "
    puts
    player_input = gets.chomp.downcase

    while player_input != "s" do
      if player_input == "h"
        break
      end
      puts "Invalid Entry.  Please Try Again."
      print "Hit or Stand (H/S): "
      puts
      player_input = gets.chomp.downcase
    end

  if player_input == "s"
    puts
    puts "Player Stands!"
    puts "Player Score: #{player.calculate_hand}"
    break
  end
end
#################DEALER SECTION################
puts
puts "Dealer was dealt #{computer_cards[0].display}"
puts "Dealer was dealt #{computer_cards[1].display}"

while computer.calculate_hand < 17 do
  computer.cards << game_deck.deal(1)[-1]
  puts "Dealer was dealt #{computer_cards[-1].display}"

  if computer.calculate_hand >= 17 && computer.calculate_hand <= 21
    puts "Dealer stands"
    puts
    break
  end

  if computer.calculate_hand > 21
    puts "Dealer busts.  You win!"
    exit
  end
end

if player.calculate_hand > computer.calculate_hand
  puts "Player Wins!"
elsif
  computer.calculate_hand > player.calculate_hand
  puts "Dealer Wins!"
else
  puts "Its a Tie!"
end

# require 'pry'
# binding.pry
