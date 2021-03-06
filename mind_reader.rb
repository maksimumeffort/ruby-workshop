#while/do loop
# def mind_reader(range)
#   magic_number = rand(range)
#   max_guesses = 3
#   attempts = 0
#   guess = nil

#   while guess != magic_number do
#     puts "try again" unless guess.nil?
#     puts "guess the number"
#     attempts += 1
#     guess = gets.chomp.to_i
#     break if attempts >= max_guesses

#   end

#     winner = "Correct"
#     loser = "Ran out of guesses. magic number is #{magic_number}"

#     puts guess == magic_number ? winner : loser
# end

# refactored with do/while loop
def mind_reader magic_number
  max_guesses = 3
  attempts = 0
  guess = nil

  loop do
    puts "guess the number"
    guess = gets.chomp.to_i
    attempts += 1
    break if attempts >= max_guesses
    break if guess == magic_number
    puts "try again"
  end

  puts guess == magic_number ? "correct" : "you ran out of guesses. magic number is #{magic_number}"
end

mind_reader(5)
