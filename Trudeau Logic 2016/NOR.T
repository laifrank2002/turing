var NOR : boolean

var N : int
get N
var A : array 1 .. N of int
for i : 1 .. N
    get A (i)
end for

var x, y : int
var Q : int
get Q
for i : 1 .. Q
    NOR := true
    get x, y
    for q : x .. y
	if A (q) = 1 then
	    NOR := false
	end if
    end for
    if NOR = false then
	put 0
    else
	put 1
    end if
end for
