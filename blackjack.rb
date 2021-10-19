# interface

  # greeting
  puts 'Enter your name'
  player_name = gets.chomp

  puts "Welcome #{player_name}"

# basic logic, score comparison only
  player_score = nil
  dealer_score = nil
  card = rand(1...13)

  # dealer_draws, has to draw two cards
  dealer_cards = []
  2.times { dealer_cards << card }

  player_cards = []
  player_cards << card

  puts "Dealer has #{dealer_cards[0]}"
  puts "You have #{player_cards[0]}"



# single player, computer dealer
#

# objective: get cards closest to 21



# if over 21: lose
# player_score > dealer_score && player_score <= 21 ? win : lose
# player can only see 1 dealer card
# player gets a card

# 4 suits: diamonds, clubs, hearts, spades
# Player interface. 2 options: Hit => add 1 card, stay => keep player_score

# cards_deck method

# shuffle_cards method

# identify_card method

# label_card method

# card_value method

# determine_winner method

# game_loop method
