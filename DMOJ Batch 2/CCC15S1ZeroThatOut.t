%
var arrayLim : int
get arrayLim
var input : array 1 .. arrayLim of int
var count : int := 1
var Aindex : int := 1
var sum : int := 0
loop
    get input(Aindex)
    if input(Aindex) = 0 then
    input(Aindex - 1) := 0
	Aindex -= 1
    else
	Aindex += 1
    end if
    exit when count = arrayLim
    count += 1
end loop

for i : 1 .. Aindex - 1
    sum += input (i)
end for
put sum
