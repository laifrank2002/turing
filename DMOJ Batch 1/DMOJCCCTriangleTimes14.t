var a, b, c : int
get a, b, c

if a + b + c = 180 then
    if a = 60 and b = 60 and c = 60 then
	put "Equilateral"
    elsif a = b or b = c or c = a then
	put "Isosceles"
    else
	put "Scalene"
    end if
else
    put "Error"
end if
