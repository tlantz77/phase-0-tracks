# Class - Viking 
# Attributes
# -----------------------
# Age (Integer)
# Favorite Weapon (String)
# Patron God (String)
# Wearing Helmet? (True/False)

# Methods
# -----------------------
# Don Helmet (can change Wearing Helmet?)
# Pray to God (can change Patron God)
# Go Berserk!

class Viking
  attr_reader :name, :weapon 
  attr_accessor :age, :god, :wearing_helmet

  def initialize(name, age, weapon, god)
    @name = name
    @age = age
    @weapon = weapon
    @god = god
    @wearing_helmet = false
    @lucky = false
  end

  def don_helmet
    @wearing_helmet = true
  end
  
  def pray(new_god)
    if @god == new_god
        puts "#{@god} bestows his/her favor!"
        @lucky = true
      else
        puts "#{@god} is displeased that you chose another!"
        @god = new_god
    end
  end  
  
  def go_berserk
    puts "#{@name} goes berserk and attacks the enemy!"
    if @wearing_helmet && @lucky
        puts "#{@name} is victorious!"
      elsif @wearing_helmet
        puts "#{@name} survives but their weapon broke!"
        @weapon = "fists"
      else
        puts "#{@name} was bashed on the head and sent to Valhalla!"
        @age = "dead"
    end
  end  

end  

#Program to build array of Vikings
warriors = []

puts "Greetings Jarl!  How many Viking warriors will you gather for your raid?"
  x = gets.to_i

puts "Excellent, let's enlist the first warrior..."  
  x.times do
    puts "What is your name, warrior?"
      name = gets.chomp
    puts "What is your age?"
      age = gets.to_i
    puts "What is your favorite weapon?"
      weapon = gets.chomp
    puts "Who is your patron god?  Odin? Thor? Loki? Freya? Someone else?"
      god = gets.chomp    
    warriors << Viking.new(name, age, weapon, god)
    puts "You are enlisted, #{name}! On to the next warrior..."
  end  

#print the array of Vikings.

puts "Your raiding party is complete!  Here are your brave warriors..."
  warriors.length.times do |i|
    puts "#{warriors[i].name} | Age: #{warriors[i].age}  Weapon: #{warriors[i].weapon}  Patron God: #{warriors[i].god}"
  end  
    
#The Vikings enter into battle!
#Program will check to see if a warrior is wearing their helmet 
#and praying to the correct god and assign their fate.
puts "Prepare for battle warriors!"
  warriors.length.times do |i|
  	puts "#{warriors[i].name}, are you wearing your helmet?!"
  	  h = gets.chr
  	  warriors[i].don_helmet if h == "y"
  	puts "Who do you pray to?"
  	  god = gets.chomp
  	  warriors[i].pray(god)
  	puts "Now charge, #{warriors[i].name}!" 
  	  warriors[i].go_berserk
  end
  
#Print the array of Vikings w/ any status changes.

puts "The battle is finished, here is the status of your warriors..."
  warriors.length.times do |i|
    puts "#{warriors[i].name} | Age: #{warriors[i].age}  Weapon: #{warriors[i].weapon}  Patron God: #{warriors[i].god}"
  end    	   




