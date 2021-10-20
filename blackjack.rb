# interface

  # greeting
  # puts 'Enter your name'
  # player_name = gets.chomp

  # puts "Welcome #{player_name}"

# basic logic, score comparison only

  def draw_card(deck)
    deck << rand(1...13)
  end

  def score_count(player, dealer)
    puts "Dealer has #{dealer.sum}"
    puts player.sum > dealer.sum ? 'You win!' : 'You lose'
  end

  # first cards
  dealer_cards = []
  player_cards = []

  2.times { draw_card(dealer_cards) }
  draw_card(player_cards)

  puts "Dealer has #{dealer_cards[0]}"

  # player choice logic
  until player_cards.sum > 21
    puts "You have #{player_cards.sum}"
    puts "Your move. [hit/stay]"
    choice = gets.chomp.downcase

    if choice == "hit"
      draw_card(player_cards)
    elsif choice == "stay"
      score_count(player_cards, dealer_cards)
    else
      puts 'Not an option'
    end
    # puts "You're over 21. You lose"
  end


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
