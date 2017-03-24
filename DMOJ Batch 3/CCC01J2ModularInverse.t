%
var a : boolean := false
var x : int
var m : int
var b : int := 0
var e : int := 0

get x
get m

for i : 1 .. m
    for k : 1 .. m
	if i * x = (k * m) + 1 then
	    put i
	    a := true
	end if
    end for
end for

if a = false then
    put "No such integer exists."
end if
