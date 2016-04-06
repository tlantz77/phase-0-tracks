#define Santa class
class Santa
  attr_reader :gender, :ethnicity, :age
  
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
def random_santa(x)
  santas = []
  genders = ["male", "female", "genderfluid", "transgender", "agender", "indeterminate"]
  ethnicities = ["human", "elf", "dwarf", "hobbit", "orc", "troll", "dragon", "goblin"]
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
p santas[2].gender
p santas[0].ethnicity