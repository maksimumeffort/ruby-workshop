def mind_reader(range)
  magic_number = rand(range)
  guess = nil

  while guess != magic_number do
    puts "try again" unless guess.nil?
    puts "guess the number"
    guess = gets.chomp.to_i
  end
    puts "magic number is #{magic_number}"
end

mind_reader(20)
