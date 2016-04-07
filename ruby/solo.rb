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
  attr_reader :name 
  attr_accessor :age, :weapon, :god, :wearing_helmet

  def initialize(name, age, weapon, god)
    @name = name
    @age = age
    @weapon = weapon
    @god = god
    @wearing_helmet = False
  end

  def don_helmet
    @wearing_helmet = True
  end
  
  def pray_to_god(new_god)
    if @god == new_god
        puts "#{@god} bestows his favor!"
      else
        puts "#{new_god} bestows his favor and patronage, but #{@god} is displeased!"
        @god = new_god
    end
  end  
  
  def go_berserk
    puts "#{@name} goes berserk and attacks his enemies!"
    if @wearing_helmet
        puts "#{@name} is victorious!"
      else
        puts "#{@name} was bashed on the head and sent to Valhalla!"
        @age = "dead"
    end
  end  

end      