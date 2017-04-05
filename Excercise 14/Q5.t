const arrayLim := 3
const upperLim := 200
const lowerLim := 100
var list : array 1 .. arrayLim of int
for i : 1 .. arrayLim
    randint (list (i), lowerLim, upperLim)
end for

loop
    var token : boolean := true
    for i : 1 .. arrayLim - 1
	if list (i) > list (i + 1) then
	    var place : int := list (i)
	    list (i) := list (i + 1)
	    list (i + 1) := place
	    token := false
	end if
    end for
    exit when token = true
end loop

for i : 1 .. arrayLim
    put list (i) : 5 ..
end for
