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

#Prompt designer to enter the clients info
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