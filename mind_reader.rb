def mind_reader(range)
  magic_number = rand(range)
  guess = 0

  while guess != magic_number do
    puts "guess the number"
    guess = gets.chomp.to_i
  end
    puts "magic number is #{magic_number}"
end

mind_reader(20)
