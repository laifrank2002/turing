var input : string
var temp : real
loop
    loop
	get input
	if strrealok (input) then
	    temp := strreal(input)
	    exit
	else
	    put "Error Code 471, Not a valid integer!"
	end if
    end loop
    exit when temp > 30
end loop
put "Wow, that's hot"
