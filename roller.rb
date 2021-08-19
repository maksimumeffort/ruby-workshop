def dice_roll(sides, num)

  return rand(sides) * num

end

puts "Rolling 5 sided die"
puts dice_roll(5,1)
puts "Rolling 2 6 sided dice"
puts dice_roll(6,2)
