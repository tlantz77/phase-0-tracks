class Puppy
  def initialize(name)
    @name = name
  
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
    count = 0
    while count <= int
      puts "Woof!"
      count += 1
    end  
  end
  
  def roll_over
    puts "Roll over!"
  end
  
  def dog_years(age)
    d_age = age / 7
  end
  
  def shake
    put "Shake!!!!"
  end
  
end


#sadie = Puppy.new("Sadie")
#p sadie.fetch("bone")

class Car
  def initialize(name)
    @name = name
  end
  
  def drive(speed)
     "zoom zoom at #{speed.to_i} MPH" 
  end
  
  def pop_a_wheely
     "Popping those wheels"
  end
  
  def breakdown(money)
    "The breakdown will cost you $ #{money.to_i}"
  end
  
  def name
    @name
  end

end

car_array = []
50.times do |x|
  #New Class 
  car = Car.new("Car number #{x.to_s}") 
  car_array << car
end



car_array.each do |car|
  p car.name 
  p car.drive(Random.rand(55))
  p car.pop_a_wheely
  p car.breakdown(Random.rand(550))

end