#define Santa class
class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :age
  
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

#driver code
# test_santa = Santa.new("female", "Japanese")
# p test_santa
# test_santa.celebrate_birthday
# test_santa.get_mad_at("Dancer")
# p test_santa.gender
# p test_santa.ethnicity
# p test_santa
# test_santa.age = 23
# p test_santa


#print Many Random Santas program
genders = ["male", "female", "genderfluid", "transgender", "agender", "indeterminate gender"]
ethnicities = ["human", "elf", "dwarf", "hobbit", "orc", "troll", "dragon", "goblin"]

puts "How many Santas would you like to generate?"
input = gets.to_i
input.times do |x|
  random_santa = Santa.new(genders[Random.rand(genders.length)], ethnicities[Random.rand(ethnicities.length)])
  random_santa.age = Random.rand(140)
  puts "Santa #{x} is a #{random_santa.gender} #{random_santa.ethnicity} who is #{random_santa.age} years old."
end  
  