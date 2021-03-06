# mid level logic, score comparison with cards

  # methods

    # 1 generate_deck method
    # 4 suits: diamonds, clubs, hearts, spades
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
    def draw_card(side, cards)
      # possibly an issue with using shuffle_deck
      side << cards.pop
    end

    # 3 identify_cards method
    def identify_cards(side)
      # lists cards drawn
      side.map do |s|
        s.join(' ')
      end
    end

    # list_cards method
    def list_cards(side)
      identify_cards(side).join("  , ")
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
        else labels << card
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
    # player gets a card
    def player_hit(side, cards)
      draw_card(side, cards)
      puts "Player hand: #{list_cards(side)} (#{cards_value(side)})"
    end

    # dealer_hit method
    def dealer_hit(side, cards, score = cards_value(side))
      until score >= 17
        puts 'Dealer draws card'
        draw_card(side, cards)
        score = cards_value(side)
      end
      puts "Dealer hand: #{list_cards(side)} (#{cards_value(side)})"
    end

    # hit_stay method
    # Player interface. 2 options: Hit => add 1 card, stay => keep player_score
    def hit_stay(side, cards, score = cards_value(side))
      while score <= 21
        puts 'Do you want to hit or stay?'
        choice = gets.chomp.downcase
        case choice
        when 'hit' then player_hit(side, cards); score = cards_value(side)
        when 'stay' then break
        else puts 'Not an option'
        end
      end
    end

    # count_score method
    def count_score(player, dealer)
      if cards_value(player) > cards_value(dealer)
        'Player wins!'
      elsif cards_value(player) == cards_value(dealer)
        "It's a tie!"
      else 'Dealer wins!'
      end
    end

    # 6 find_winner method
    def find_winner(player, dealer)
      if cards_value(player) > 21
        puts 'You are over 21. Dealer wins!'
      elsif cards_value(dealer) > 21
        puts 'Dealer is over 21. Player wins!'
      else
        puts count_score(player, dealer)
      end
    end

  # interface

  # first cards

  # play_loop
  cards = shuffle_deck

  while cards.length > 4
    puts 'Do you want to play a hand?[Yn]'
    selection = gets.chomp.downcase

    case selection
    when 'y'
      dealer_cards = []
      player_cards = []

      2.times do
        draw_card(dealer_cards, cards)
        draw_card(player_cards, cards)
      end

      # player can only see 1 dealer card
      puts "Dealer has: #{identify_cards(dealer_cards)[0]}  , <other card hidden> "
      puts "Player has: #{list_cards(player_cards)} (#{cards_value(player_cards)})"

      hit_stay(player_cards, cards)
      dealer_hit(dealer_cards, cards)
      find_winner(player_cards, dealer_cards)
      puts "Deck has: #{cards.length} cards left "

    when 'n' then break
    else puts 'Not an option'
    end
  end
  #   puts "not enough cards"

# single player, computer dealer

# objective: get cards closest to 21

# deck has to have  52 cards before the start of the game

#Dealer hitting rules
  # the dealer's hand is not complete until all players have either received blackjack, busted, or stayed.
  # When the cards are dealt at the beginning of the round the dealer will draw 2 cards for themselves and one card will be hidden.
  # After all, players go, the dealer will then reveal the hidden card and will hit until they are at or higher than 17. At which point the dealer will stay.
  # Some tables will or online sites will have the dealer stop in Blackjack at 16, so make sure you read the table's rules
