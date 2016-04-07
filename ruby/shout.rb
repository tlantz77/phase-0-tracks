module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	
	def self.yelling_happily(words)
		words + "!" + " :-D"	
	end		
end

p Shout.yell_angrily("I am angry, so very angry")

p Shout.yelling_happily("I am obnoxiously happy")