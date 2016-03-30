puts "Define veggie method."
def veggies
  x = "cucumber"
  y = "broccoli"
  z = "spinach"
  puts "Veggies are great for you!"
  yield(x, y, z)
end

puts "Use a block for veggie method with yield function."
veggies{|x, y, z| puts "#{x.capitalize}, #{y}, #{z} are green!"}

stadiums = ["Wrigley Field", "Soldier Field", "United Center"]
new_stadiums = []

sports_teams = {"Cubs" => "baseball", "Bears" => "football", "Black Hawks" => "hockey"}
#iterating through sports teams

sports_teams.each do |team, sport|
  puts "The #{team} are a #{sport} team."
end 

puts "Original data:"
p stadiums
p new_stadiums


stadiums.each do |new|
new_stadiums << "Comisky Park"
end 

puts "After .each call:"
p stadiums
p new_stadiums


stadiums.map! do |new| 
  puts new
  new.upcase
end

puts "After .map call:"
p stadiums


#release 1
numbers = [1, 2, 3, 4]
continents = {"Africa" => "south", "Asia" => "northeast", "North America" => "northwest"}

numbers.each do |x|
  if x < 3 
  new_numbers = x
  p new_numbers
  end  
end 

numbers.map do |x|
  numbers.delete_if {|x| x < 3}
end  
  
p numbers

#Release 2

numbers = [1, 1.5, 2, 3, 3.33, 4, 5, 10, 10.04, 15, 20, 25]
continents = {"Africa" => "south", "Asia" => "northeast", "North America" => "northwest", "South America" => "southwest", "Antarctica" => "south", "Europe" => "north"}

# use delete if method to select for numbers less than 3
  numbers.delete_if {|x| x < 3}
  
p numbers

#use the delete if method to filter geolocations in the south
  continents.delete_if {|land, geo| geo == "south"}

p continents

#use keep_if method to keep only odd numbers
  numbers.keep_if {|x| x%2 != 0}

p numbers

#use keep_if method to keep only if includes north in geolocation
  continents.keep_if {|land, geo| geo.include?("north")}
 
p continents

#use keep_if method to filter out the floats
  numbers.keep_if {|x| x.class == Fixnum }
 
p numbers

#use the delete_if method to remove continents starting with A
  continents.delete_if {|land, geo| land.chr == 'A'}

p continents

#use the select method to only select numbers that are not divisible by 5
new_num = numbers.select {|x| x%5 != 0}

p new_num

#use the select method to only select continents with "west" in the value
new_cont = continents.select {|land, geo| geo.include?("west")}

p new_cont
  

