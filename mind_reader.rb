def mind_reader(range)
  magic_number = rand(range)
  max_guesses = 3
  attempts = 0
  guess = nil

  while guess != magic_number do
    puts "try again" unless guess.nil?
    puts "guess the number"
    attempts += 1
    guess = gets.chomp.to_i
    break if attempts >= max_guesses

  end

    puts guess == magic_number ? "Correct" : "magic number is #{magic_number}"
end

mind_reader(20)
