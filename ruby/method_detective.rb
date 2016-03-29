# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => "InVeStIgAtIoN"

"zom".insert(2, 'o')
"zom".sub('o', 'oo')
"zom".gsub('o', 'oo')
# => "zoom"

"enhance".center(15)
"enhance".ljust(11).rjust(15)
#=> "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual" << " suspects"
"the usual".replace("the usual suspects")
" the usual".gsub(/$/, " suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
" suspects".replace("the usual suspects")
#=> "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..-1)
"The mystery of the missing first letter".tr('T', '')
# => "he mystery of the missing first letter"

"Elementary,    my   dear      Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the decimal ASCII code for a lowercase 'z'.

"How many times does the letter ‘a’ appear in this string?".count('a')
#=> 4