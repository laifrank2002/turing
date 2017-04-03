%
var input : string := ""
var letter : string := ""

get letter
loop
    var newword : string := ""
    put "Enter a word"
    get input
    for i : 1 .. length(input)
	if index(letter,input(i)) = 0 then
	    newword += input(i)
	end if
    end for
    put newword
end loop
