# Virus Predictor

# I worked on this challenge with: Gabriel Bonner.
# We spent 2.5 hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative will search only dirextories within directory of the file that requires it.  Whereas "require" will search other directories.
#
require_relative 'state_data'

class VirusPredictor

# The initialize method automatically fires up on the # # instance of a class and sets instance variables.  It # can take arguments and parameters, or just set 
# default values. 
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Virus effects is an instance method that calling 2 
# other methods defined in the class.  
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Predicted deaths taking data from the STATE_DATA hash # and running a calculation to determine the number of # deaths.  Also will print the output to the console.
    
  def predicted_deaths
    # predicted deaths is solely based on population density
    factor = case @population_density
      when 0...50 then 0.05
      when 50...100 then 0.1
      when 100...150 then 0.2
      when 150...200 then 0.3
      else 0.4
    end
    number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

# Speed_of_spread takes data from the hash and 
# calculates the rate of virus spread.  Also prints  
# output to the console.
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = case @population_density
      when 0...50 then 2
      when 50...100 then 1.5
      when 100...150 then 1
      when 150...200 then 0.5
      else 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |k, v| state = VirusPredictor.new(k, v[:population_density], v[:population])
  state.virus_effects 
end





# =======================================================================
# Reflection Section