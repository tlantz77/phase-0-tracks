#define Santa class
class Santa
  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end  
  
  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end
end


#Random santa generator
def random_santas(x)
  santas = []
  genders = ["male", "female", "genderfluid", "transgender", "agender", "indeterminate"]
  ethnicities = ["human", "elf", "dwarf", "hobbit", "orc", "troll", "dragon"]
   x.times do 
    santas << Santa.new(genders[Random.rand(genders.length)], ethnicities[Random.rand(ethnicities.length)])
  end  
  santas
end

#driver code
puts "How many Santas would you like to generate?"
input = gets.to_i
santas = random_santas(input)
p santas

