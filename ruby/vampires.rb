#Request number of employees to be processed
puts "How many employees are you interviewing today?"
  employees = gets.to_i

until employees == 0
  puts "Employees remaining: #{employees}"    
    
    #User interview
    puts "Welcome to your interview!  Let's get started..."
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
    
    #Ask about allergies
    puts "Please enter any allergies you have, one at a time. Type 'done' if you do not have any."
    allergy = gets.chomp
    while (allergy != "sunshine") && (allergy != "done")
      puts "Thank you. Please enter another allergy or type 'done'."
      allergy = gets.chomp
    end  
      
    #Vampire evalution program
    currentyear = 2016
    
    if (currentyear - birthyear == age)||(currentyear - birthyear == age + 1)
        age_verify = true
      else
        age_verify = false
    end
    
   case
      when (allergy == "sunshine")
        results = "Probably a vampire."
      when (age_verify == true) && (want_garlic == "y") && (want_insure == "y")
        results = "Probably not a vampire."
      when (age_verify == false) && (want_garlic == "y") || (want_insure == "y")
        results = "Probably a vampire."
      when (age_verify == false) && (want_garlic != "y") && (want_insure != "y")
        results = "Almost certainly a vampire."
      else
        results = "Results inconclusive."
    end   
    
    if (name == "Drake Cula") || (name == "Tu Fang")
        results = "Definitely a vampire."
    end    
    
    puts results
    
  employees -= 1

end

puts "No more interviews for today."

puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."