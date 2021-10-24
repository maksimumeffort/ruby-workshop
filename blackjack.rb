# interface

  # greeting
  # puts 'Enter your name'
  # player_name = gets.chomp

  # puts "Welcome #{player_name}"

# basic logic, score comparison only

  def score_count(player, dealer)
    puts "Dealer has #{dealer.sum}"
    puts player.sum > dealer.sum ? 'You win!' : 'You lose'
  end

  def player_choice(cards)
    puts "You have #{cards.sum}"
    puts 'Your move. [hit/stay]'
  end

  def generate_deck
    suits = ["D", "C", "H", "S"]
    values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    deck = []
    values.each do |value|
      suits.each do |suit|
        deck << [value, suit]
      end
    end
  end

  # def draw_card(side)
  #   side << deck
  # end

  # first cards
  generate_deck
  puts deck

  dealer_cards = []
  player_cards = []

  2.times { draw_card(dealer_cards) }
  draw_card(player_cards)

  puts "Dealer has #{dealer_cards[0]}"

  # player choice logic
  while player_cards.sum <= 21
    player_choice(player_cards)
    choice = gets.chomp.downcase

    case choice
    when 'hit' then draw_card(player_cards)
    when 'stay' then break
    else puts 'Not an option'
    end
  end

  puts player_cards.sum > 21 ? "You're over 21. You lose" : score_count(player_cards, dealer_cards)

# single player, computer dealer

# objective: get cards closest to 21

# deck has to have  52 cards before the start of the game

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
