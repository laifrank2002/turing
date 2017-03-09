var input : string
var a : int

loop
    get input
    if strintok (input) then
	a := strint (input)
	if a not= 0 then
	    put (a * -1)
	else
	end if
    end if
end loop
