var a, b, c : int


loop
    loop
	get a, b, c
	exit when a > 0 and a < 180 and b > 0 and b < 180 and c > 0 and c < 180  
    end loop
    if a + b + c = 180 then
	if a = 60 and b = 60 and c = 60 then
	    put "Equilateral"
	elsif a = b or b = c or c = a then
	    put "Isosceles"
	else
	    put "Scalene"
	end if
	exit
    else
	put "Error"
    end if
end loop
