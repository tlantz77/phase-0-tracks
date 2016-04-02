#pseudocode
#Take name and split into an array of strings representing first and last names
	#Reverse array
	#Run iterative method on each string in the array to split it into character array
		#Run iterative method on each character array to change each letter to the next in string
			#method should check if letter is vowel or consonant
		#Rejoin character array into string
	#Rejoin strings into name
	#Return new alias name


#method that checks if a letter is a vowel or consonant and reassigns it as the next letter in the appropriate string.  If its the last in the array, reassigns as the first letter.  If non-letter char is passed, then returns a '*'.

def next_letter(letter)
	vowels = "aeiou".chars
	consonants = "bcdfghjklmnpqrstvwxyz".chars 
	
	case
		when vowels.include?(letter)
			if letter == vowels[-1]
				new_letter = vowels[0]
			else	
				idx = vowels.index(letter) + 1
			 	new_letter = vowels[idx]
			end
		when consonants.include?(letter)
			if letter == consonants[-1]
				new_letter = consonants[0]
			else
				idx = consonants.index(letter) + 1
				new_letter = consonants[idx]
			end	
		else
			new_letter = "*"
	end
	
	return new_letter
end


#method to create alias.

def create_alias(spy_name)
	
	#run methods on name to downcase, split into first/lastname, and swap names .
	flip_name = spy_name.downcase.split(' ').reverse
	
	#take each name, split it int.o character array, and run next_letter method on each character.
	codename = flip_name.map do |name|
		new_name = name.chars
		new_name.map! do |letter|
			next_letter(letter)
		end
	    
	    #reassemble character array into name and recapitalize.
	    new_name = new_name.join('').capitalize 
	end	

	#rejoin names into one string and return as method value.
    return codename.join(' ')
    
end



#User interface

agent_database = Hash.new("No data")

puts "Hello Agent <YOURNAME>!  Welcome to the Agency Codenamification Interface!"
puts "Please enter an agent's name to encode and enter into the database (type 'exit' to abort):"

user_input = gets.chomp

#Loop to take entered names, run create_alias method on names, and store in agent_database hash.

while user_input != "exit"
	true_name = user_input
	code_name = create_alias(user_input)
	agent_database.store(true_name, code_name)
	puts "Thank you, please enter another name, or type 'exit' to finish:"
	user_input = gets.chomp
end	


#Print agent_database info using iterative method
puts "Thank you. This is a list of your agents and their aliases.  DON'T LET IT FALL INTO THE WRONG HANDS!"

agent_database.each do |truename, codename|
	puts "#{truename} is also known as '#{codename}'."
end	