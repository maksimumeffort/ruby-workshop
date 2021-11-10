# mid level logic, score comparison with cards

  # methods

    # 1 generate_deck method
    def generate_deck
      suits = %w[♦️ ♣️ 🤍 ♠️]
      values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
      values.map do |value|
        suits.map do |suit|
          [value, suit]
        end
      end
    end

    # 2 shuffle_deck method
    def shuffle_deck
      generate_deck.flatten(1).shuffle
    end

    # draw_card method
    def draw_card(side, cards = shuffle_deck)
      side << cards.pop
    end

    # 3 identify_cards method
    def identify_cards(side)
      # lists cards drawn
      side.map do |s|
        s.join(' ')
      end
    end

    # 4 label_cards method
    def label_cards(side)
      # puts a label on each card drawn
      labels = []
      identify_cards(side).each do |card|
        if card.split[0] == "A"
          labels << "Ace"
        elsif card.index(/\d/) == nil
          labels << "Face"
        else labels << card[0]
        end
      end
      labels
      # labels: Number || Face|| Ace
    end

    # 5 cards_value method
    def cards_value(side)
      #assigns value to card based on its label
      score = 0
      label_cards(side).each do |label|
        case label
        when 'Face' then score += 10
        when 'Ace'  then score += 11
        else score += label.to_i
        end
      end
      score
    end

    # hit method
    def hit(side)
      draw_card(side)
      puts cards_value(side)
    end

    # hit_stay method
    def hit_stay(side, score = cards_value(side))
      while score <= 21
        puts 'Do you want to hit or stay?'
        choice = gets.chomp.downcase
        case choice
        when 'hit' then hit(side); score = cards_value(side)
        when 'stay' then break
        else puts 'Not an option'
        end
      end
    end

    # count_score method
    def count_score(player, dealer)
      puts cards_value(player) > cards_value(dealer) ? 'You won' : 'You lost'
    end

    # 6 find_winner method
    def find_winner(player, dealer)
      puts cards_value(player) > 21 ? 'You are over 21. You lose' : count_score(player, dealer)
    end

  # interface


  # first cards

  # play_loop
  cards = shuffle_deck

  while cards.length > 4

    dealer_cards = []
    player_cards = []

    2.times { draw_card(dealer_cards) }
    2.times { draw_card(player_cards) }

    print identify_cards(dealer_cards)
    puts cards_value(dealer_cards)

    print identify_cards(player_cards)
    puts cards_value(player_cards)

    hit_stay(player_cards)
    find_winner(player_cards, dealer_cards)
    cards = shuffle_deck
    puts "Deck has: #{shuffle_deck.length} cards left "

  end
    puts "not enough cards"


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


