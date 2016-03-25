#encrypt
#Calculate length of string
#Starting with each letter, reassign the next letter in the alphabet to that character in the string.

def encrypt(word)
 
position = 0
newstring = ""
    while position < word.length
      crypt = word[position].next
      newstring += crypt
      position += 1
    end
  return newstring
end  
  
#encrypt("encyclopedia")


#decrypt
#take passed string and calculate length of string
#starting with the first letter, add the previous letter in the alphabet to our output string variable until we get to the last letter

def decrypt(word)
 
position = 0
newstring = ""
alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ !"
  while position < word.length
      current = alpha.index(word[position])
      crypt = alpha[current - 1]
      newstring += crypt
      position += 1
    end
  return newstring
end  
  
#decrypt("bcd")

#p decrypt(encrypt("The duck flies at midnight"))
#p encrypt("The duck flies at midnight")
#p decrypt("Uif!evdl!gmjft!bu!njeojhiu")

#DRIVER CODE

puts "Greetings Agent, do you need to encrypt or decrypt a password today?"
ans = gets.chomp

if ans == "encrypt"
  puts "Enter the password you wish to encrypt:"
  password = gets.chomp
  p encrypt(password)
  elsif ans == "decrypt"
    puts "Enter the password you wish to decrypt:"
    password = gets.chomp
    p decrypt(password)
  else 
    puts "Unknown response. Enter 'encrypt' or 'decrypt'."
end   


