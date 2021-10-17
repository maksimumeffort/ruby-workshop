def play_game
  # initital greeting
  puts 'welcome to HiLow - Shall we play? [Y/n]'
  choice = gets.chomp.upcase

  # acceptance logic logic
  if choice == 'Y'
    puts "I'm going to pick a random number you have to guess. Enter maximum number for guessing range."
    max_num = gets.chomp.to_i

    # high/low functionality
    random_number = rand(max_num)
    input = nil
    puts 'guess the number'

    # guessing loop
    while input != random_number
      input = gets.chomp.to_i
      break if input == random_number
      puts random_number > input ? 'go high' : 'go low'
    end
    puts 'you guessed correctly'

  # refusal logic
  else
    puts 'Thanks for playing!'
  end
end

play_game
