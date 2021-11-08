# mid level logic, score comparison with cards

  # methods

    # generate_deck method
    def generate_deck
      suits = %w[♦️ ♣️ 🤍 ♠️]
      values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
      values.map do |value|
        suits.map do |suit|
          [value, suit]
        end
      end
    end

    # shuffle_deck method
    def shuffle_deck
      generate_deck.flatten(1).shuffle
    end

    # draw_card method
    def draw_card(side, cards)
      side << cards.pop
    end

    # identify_cards method
    def identify_cards(side)
      side.each do |s|

      end
    end

    # label_cards method

    # card_value method


    def card_score(side)
      score = 0
      side.each do |s|
        # needs to first check if s[0] is A, if so it can be either 11 or 1
        if s[0] == 'A' && score < 21
          score += 11
        elsif s[0] == 'A' && score > 21
          score += 1
        # needs an if, elsif, else
        else
          s[0].class == Integer ? score += s[0] : score += 10
        end
      end
      score
    end

  # first cards
  dealer_cards = []
  player_cards = []
  # dealer_score = card_score(dealer_cards)
  # player_score = card_score(player_cards)


  cards = shuffle_deck
  #generate_deck.flatten(1).shuffle

  print cards

  draw_card(player_cards, cards)
  puts '___________________'
  print cards
  puts '___________________'
  print player_cards

  # interface
  #   choice = nil

  #   # while choice != 'n'
  #   #   puts 'Do you want to play a hand? Y/n'
  #   #   choice = gets.chomp.downcase
  #   # end

  # 2.times { draw_card(dealer_cards, deck) }
  # draw_card(player_cards, deck)

  # # puts "Dealer has #{dealer_cards[0]}"

  # # player choice logic
  # # game_loop method
  # while player_score <= 21
  #   # player_choice(player_cards)
  #   puts 'your choice. [hit/stay]'
  #   choice = gets.chomp.downcase

  #   case choice
  #   when 'hit' then
  #     draw_card(player_cards, deck);
  #     card_score(player_cards)
  #   when 'stay' then break
  #   else puts 'Not an option'
  #   end
  # end

  # determine_winner method
  # puts player_cards.sum > 21 ? "You're over 21. You lose" : score_count(player_cards, dealer_cards)

# single player, computer dealer

# objective: get cards closest to 21

# deck has to have  52 cards before the start of the game

# if over 21: lose
# player_score > dealer_score && player_score <= 21 ? win : lose
# player can only see 1 dealer card
# player gets a card

# 4 suits: diamonds, clubs, hearts, spades
# Player interface. 2 options: Hit => add 1 card, stay => keep player_score


#Dealer hitting rules
  # the dealer's hand is not complete until all players have either received blackjack, busted, or stayed.
  # When the cards are dealt at the beginning of the round the dealer will draw 2 cards for themselves and one card will be hidden.
  # After all, players go, the dealer will then reveal the hidden card and will hit until they are at or higher than 17. At which point the dealer will stay.
  # Some tables will or online sites will have the dealer stop in Blackjack at 16, so make sure you read the table's rules






