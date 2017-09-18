total_distance = 0
done_exercise = false

puts "How much energy do you have, on a scale of 1 to 30?"
energy = gets.to_i

while done_exercise == false
  if energy <= 0
    done_exercise = true
    puts "You have run out of energy! Time to go home"
  else
    puts "Would you like to walk or run or go home?"
    user_exercise_type = gets.chomp
    
    if user_exercise_type == "walk"
      total_distance += 1
      energy += 5
    elsif user_exercise_type == "run"
      total_distance += 5
      energy -= 5
    elsif user_exercise_type == "go home"
      done_exercise = true
    else
      puts "You have entered a command that does not exist"
    end

    puts "Distance from home is #{total_distance}km and you have an energy level of #{energy}"
  end
end
