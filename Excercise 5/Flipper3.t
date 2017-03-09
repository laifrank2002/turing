var input : string
var a : int
var total : int := 0
var sum : int := 0
loop
    get input
    if strintok (input) then
	a := strint (input)
	if a not= 0 then
	    put (a * -1)
	    total += 1
	    sum += a
	else
	    exit
	end if
    end if
end loop
if total not= 0 then
    put total, " ", sum, " ", sum / total
else
    put "error"
end if
