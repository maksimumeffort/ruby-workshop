# def mind_reder(range)
#   magic_number = rand(range)
#   puts "what's your guess?"
#   guess = gets.chomp.to_i
#   if guess == magic_number
#     puts "correct"
#   else
#     puts "incorrect.magic number is #{magic_number}"
#   end
# end

# mind_reder(1..10)

# def mind_reader
#   magic_number = 7
#   guess = nil
#   while guess != magic_number do
#     puts "try again" unless guess.nil?
#     puts "what's your guess?"
#     guess = gets.chomp.to_i
#   end
#   puts "that's right"
# end


def mind_reader
  magic_number = 7
  max_guesses = 3
  attempts = 0
  guess = nil

  while guess != magic_number do
    puts "Nope, try again!" unless guess.nil?
    puts "what's your guess?"
    guess = gets.chomp.to_i
    break if attempts >= max_guesses
      attempts += 1
    end

  winner = 'good guess'
  loser = 'you ran out of guesses'
  puts guess == magic_number ? winner : loser
end

mind_reader

