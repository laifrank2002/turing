var word : string
var vowels : int := 0
get word

for i : 1 .. length(word)
    case word (i) of
	label "A","a": vowels += 1
	label "E","e": vowels += 1
	label "O","o": vowels += 1
	label "I","i": vowels += 1
	label "U","u": vowels += 1
	label :
    end case
end for

put vowels
