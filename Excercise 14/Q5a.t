const arrayLim := 3
const upperLim := 100
const lowerLim := 50
var list : array 1 .. arrayLim of real
for i : 1 .. arrayLim
    rand (list (i))
    list(i) *= upperLim - lowerLim
    list(i) += lowerLim
end for

loop
    var token : boolean := true
    for i : 1 .. arrayLim - 1
	if list (i) > list (i + 1) then
	    var place : real := list (i)
	    list (i) := list (i + 1)
	    list (i + 1) := place
	    token := false
	end if
    end for
    exit when token = true
end loop

for i : 1 .. arrayLim
    put list (i) : 5
end for
