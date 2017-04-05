%
var input : string
var random : int := 1

loop
    randint (random, 1, 10)
    put "Enter a ", random, " letter word. " ..
    get input
    if length (input) = random then
	put "Congrats"
    else
	loop
	    put random, " LETTER WORD! " ..
	    get input
	    if length (input) = random then
		put "Finally"
		exit
	    else
		put random, " LETTER WORD! COMEON! " ..
	    end if
	end loop
    end if
end loop
