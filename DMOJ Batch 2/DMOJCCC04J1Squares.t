var input : int
var biggest : int
get input

for i : 1 .. input
    if (i ** 2) <= input then
	biggest := i
    end if
end for
put "The largest square has side length ",biggest,"."
