%
var word : string := ""
var input : string := ""
var letter : string := ""

loop
    var newword : string := ""
    put "Enter a letter to remove, or enter a word longer than one letter"
    get input
    if length (input) > 1 then
	word := input
    else
	letter := input
    end if

    for i : 1 .. length (word)
	if index (letter, word (i)) = 0 then
	    newword += word (i)
	end if
    end for
    put newword

    input := newword
end loop
