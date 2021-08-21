def drive_decision(traffic_signal, weather, distance_to_signal, speed_limit)
  if traffic_signal == :green
    if weather == :sunny
      speed_limit
    elsif distance_to_signal >= 50
      speed_limit
    else
      speed_limit * 0.9
    end
  elsif traffic_signal == :yellow
    if weather == :sunny && distance_to_signal >= 50
      speed_limit * 0.8
    elsif weather == :sunny && distance_to_signal < 50
      speed_limit * 0.5
    elsif weather == :rainy && distance_to_signal >= 50
      speed_limit * 0.8
    elsif weather == :rainy && distance_to_signal < 50
      speed_limit * 0.25
    else
      raise "Condition not handled"
    end
  else # red light”
    if weather == :sunny && distance_to_signal >= 50
      speed_limit * 0.5
    elsif weather == :rainy && distance_to_signal >= 50
      speed_limit * 0.25
    else
      0 # all other conditions should stop the car
    end
  end
end

puts drive_decision(:green, :sunny, 100, 50)
puts drive_decision(:yellow, :rainy, 50, 25)

