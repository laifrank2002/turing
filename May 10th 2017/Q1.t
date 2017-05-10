var arrayUpper : int := 0
var list : flexible array 1 .. arrayUpper of int

procedure getNew
    arrayUpper += 1
    new list, arrayUpper
    get list (arrayUpper)
end getNew

getNew

for i : 2 .. 10
    var input : int
    var token : boolean := true
    get input
    for ind : 1 .. arrayUpper
	if input = list (ind) then
	    token := false
	    exit
	end if
    end for
    if token = true then
	arrayUpper += 1
	new list, arrayUpper
	list(arrayUpper) := input
    end if
end for

for i : 1 .. arrayUpper
    put list(i)
end for
