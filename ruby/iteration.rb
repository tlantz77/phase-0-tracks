def veggies
  x = "cucumber"
  y = "broccoli"
  z = "spinach"
  puts "Veggies are great for you!"
  yield(x, y, z)
end

veggies{|x, y, z| puts "#{x.capitalize}, #{y}, #{z} are green!"}
  