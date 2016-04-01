#method that checks if a letter is a vowel or consonant and reassigns it as the next letter in the appropriate string.  If its the last in the array, reassigns as the first letter.

def next_letter(letter)
	vowels = "aeiou".chars
	consonants = "bcdfghjklmnpqrstvwxyz".chars
	
	case
		when vowels.include?(letter)
			if letter == vowels[-1]
				new_letter = vowels[0]
			else	
				idx = vowels.index(letter) + 1
			 	new_letter = vowels[idx]
			end
		when consonants.include?(letter)
			if letter == consonants[-1]
				new_letter = consonants[0]
			else
				idx = consonants.index(letter) + 1
				new_letter = consonants[idx]
			end	
		else
			new_letter = "*"
	end
	
	return new_letter
end

name = "Felicia Torres"

#First split the name into 2 words
reverse_name = name.split(' ')

#Flip and rejoin words
reverse_name = reverse_name.reverse.join(' ')

#Split reversed name into character array
reverse_name = reverse_name.chars