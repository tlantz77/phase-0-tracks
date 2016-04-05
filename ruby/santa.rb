#define Santa class
class Santa
	def initialize
		p "Initializing Santa instance..."
	end
	
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end	
	
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end
end

george = Santa.new
george.speak
george.eat_milk_and_cookies("peanut butter")

