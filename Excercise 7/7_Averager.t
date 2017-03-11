var input : string
var a, b : real
loop
    loop
	get input
	if strrealok(input) then
	    a := strreal(input)
	    exit
	end if
    end loop
    
    loop
	get input
	if strrealok(input) then
	    b := strreal(input)
	    exit
	end if
    end loop
    exit when a = 0 and b = 0
    put (a+b)/2
end loop
