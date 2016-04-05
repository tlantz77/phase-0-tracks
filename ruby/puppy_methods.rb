class Puppy

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

