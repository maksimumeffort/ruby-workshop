def play_choice
  puts "welcome to HiLow - Shall we play? [Y/n]"
  choice = gets.chomp.upcase
  if choice == "Y"
    puts "I'm going to pick a random number you have to guess. Enter maximum number for guessing range."
    max_num = gets.chomp.to_i
  else
    puts "Thanks for playing!"
  end
end

def guess(max_num)
  random_number = rand(max_num)
  input = nil
  puts "guess the number"
  while input != random_number
    input = gets.chomp.to_i
    if random_number > input
      puts "go high"
    else
      puts "go low"
    end
  end
    puts "you guessed correctly"
end

guess(5)
