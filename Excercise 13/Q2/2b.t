%
var input : string := ""
var letter : string := ""

get input
loop
    var newword : string := ""
    put "Enter a letter to remove"
    get letter
    for i : 1 .. length(input)
	if index(letter,input(i)) = 0 then
	    newword += input(i)
	end if
    end for
    put newword
    input := newword
end loop
