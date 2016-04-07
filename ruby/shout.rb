# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
	
# 	def self.yelling_happily(words)
# 		words + "!" + " :-D"	
# 	end		
# end

# p Shout.yell_angrily("I am angry, so very angry")

# p Shout.yelling_happily("I am obnoxiously happy")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	
	def yelling_happily(words)
		words + "!" + " :-D"	
	end		
end

class Old_Man
	include Shout
end

class Two_Year_Old_Child
	include Shout
end

Gramps = Old_Man.new
p Gramps.yell_angrily("I am yelling at a cloud")
p Gramps.yelling_happily("Thank you for getting off my lawn")

Gracie = Two_Year_Old_Child.new
p Gracie.yell_angrily("I wanna watch Frozen for the 100th time")
p Gracie.yelling_happily("I AM YELLING FOR NO GOOD REASON WHATSOEVER")



