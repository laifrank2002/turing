var m,n : int
var ways : int := 0
get m,n
for i : 1 .. m
    for k : 1 .. n
	if i + k = 10 then
	    ways += 1
	end if
    end for
end for
if ways = 1 then
    put "There is ", ways ," way to get the sum 10."
else
    put "There are ", ways," ways to get the sum 10."
end if
