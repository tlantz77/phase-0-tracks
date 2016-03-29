#Create new hash for client info with default return for non-existent keys
client = Hash.new("No data found")

#Method to convert yes/no answers to boolean
def to_bool(x)
	if x == "y"
		return true
	  elsif x == "n"
		return false
	  else
	  	return "unknown"
	end  	
end

#Prompt user to enter the clients info
puts "Hello!  Let's start a new client profile..."
puts "Please enter the client's name:"
	client[:name] = gets.chomp
puts "Enter the client's age:"	
	client[:age] = gets.to_i
puts "How many children does the client have?"
	client[:children] = gets.to_i
puts "Does the client have pets? (y/n)"
	client[:has_pets] = to_bool(gets.chr)
puts "What is the client's preferred house decor theme?"
	client[:decor_theme] = gets.chomp
puts "How many bedrooms does the client's house have?"
	client[:bedrooms] = gets.to_i
puts "How many bathrooms?"
    client[:bathrooms] = gets.to_i
puts "Does the house have a basement?"
	client[:has_basement] = to_bool(gets.chr)
puts "What is the client's preferred wood type?"
 	client[:preferred_wood] = gets.chomp

#Print client info
puts "Thank you!  Let's review the client's information..."
puts client
 	
#Prompt user to make any needed changes to profile
puts "Are there any changes that need to be made?"
puts "If so, enter the info key that needs to be changed otherwise type 'none'."
	change = gets.chomp
	
#Check the datatype of the key to be changed, so the program takes user input as correct datatype
if change != "none"
	puts "Enter the new information for #{change}: "	
	case 
		when client[change.intern].class == String
		 	client[change.intern] = gets.chomp
		when client[change.intern].class == Fixnum
			client[change.intern] = gets.to_i
		when (client[change.intern].class == TrueClass) || (client[change.intern] == FalseClass)
			client[change.intern] = to_bool(gets.chr)
		else 
			puts "Unknown key"
	end
else
	puts "No changes made."
end	

#Print the updated hash
puts "Here is the client's updated info:"
puts client