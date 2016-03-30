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
