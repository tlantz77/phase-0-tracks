#User interview
puts "Welcome to your first interview!  Let's get started..."
puts "What is your name?"
  name = gets.chomp 
puts "How old are you?"
  age = gets.to_i
puts "In what year were you born?"
  birthyear = gets.to_i 
puts "Our cafeteria serves garlic bread.  Would you like us to order some for you? (y/n)"
  want_garlic = gets.chr
puts "Would you like to enroll in our health insurance plan? (y/n)"
  want_insure = gets.chr

#Vampire evalution program
currentyear = 2016

if (currentyear - birthyear == age)||(currentyear - birthyear == age + 1)
    age_verify = true
  else
    age_verify = false
end

if (name == "Drake Cula") || (name == "Tu Fang")
    puts "Definitely a vampire."
  elsif (age_verify == true) && (want_garlic == "y") && (want_insure == "y")
    puts "Probably not a vampire."
  elsif (age_verify == false) && (want_garlic != "y") && (want_insure != "y") 
    puts "Almost certainly a vampire."
  elsif (age_verify == false) && ((want_garlic != "y") || (want_insure != "y"))
    puts "Probably a vampire."
  else
    puts "Results inconclusive."
end    