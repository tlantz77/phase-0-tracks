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