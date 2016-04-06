#define Santa class
class Santa
  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  
  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end  
  
  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end
  
  #getter methods
  def gender
    @gender
  end
  
  def ethnicity
    @ethnicity
  end
  
  #setter methods
  def celebrate_birthday
    @age += 1
  end  
  
  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end
end

#random Santas generator
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
  
santas[0].celebrate_birthday

p santas

santas[2].get_mad_at("Rudolph")

p santas



