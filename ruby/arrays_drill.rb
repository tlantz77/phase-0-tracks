def add_to_array(array, add)
  return array << add
end

def call_array(x, y, z)
  return new_array = [x, y, z]
end

sports = ["baseball", "basketball", "football", "hockey", "soccer"]

sports.delete_at(2)

sports.insert(2, "skiing")

sports.delete("baseball")

if sports.include?("soccer")
     puts "Yes this sport is in the array."
  else
     puts "No this sport is not included."
end

p sports

teams = ["Cubs", "Bulls", "Blackhawks"]

sportsteams = sports + teams

p sportsteams

p call_array("apple", 2, true)

p add_to_array(sports, "tennis")

p add_to_array(sportsteams, sports)

p add_to_array(teams, "Giants")