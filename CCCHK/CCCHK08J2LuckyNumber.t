%CCCHK08J2LuckyNumber
var N : int
var X : string
get N
for i : 1 .. N
    get X
    loop
	var NewValue : int := 0
	for ind : 1 .. length (X)
	    NewValue += strint (X (ind))
	end for
	X := intstr (NewValue)
	exit when NewValue < 10
    end loop
    put X
end for
