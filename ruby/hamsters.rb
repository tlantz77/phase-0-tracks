puts "What is the hamster's name?"
name = gets.chomp
puts "How loud is the hamster on a scale from 1 to 10?"
volume = gets.to_i
puts "What color is the hamster?"
color = gets.chomp
puts "Is the hamster a good candidate for adoption? (y/n)"
goodc = gets.chr
  if (goodc == "y")
    goodc = "Yes, it is a good candidate"
  elsif (goodc == "n")
    goodc = "No, it is not a good candidate"
  else 
    puts "Wrong answer"
  end

puts "How old do you think the hamster is in years?"
age = gets.to_i
  if (age == 0)
    age = nil
  end

puts "Here's your hamster's data..."
puts "Name: #{name}"
puts "Noise level: #{volume}"
puts "Color: #{color}"
puts "Good adoption candidate? #{goodc}"
puts "Age: #{age}"
