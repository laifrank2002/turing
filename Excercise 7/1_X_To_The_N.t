var input1, input2 : string
var x, n : int
var sum : int := 0

loop
    put "Enter x and n "..
    get input1, input2
    if strintok (input1) and strintok (input2) then
	x := strint(input1)
	n := strint(input2)
	if n > 0 then
	    exit
	else
	    put "ERROR! PLEASE ENTER A 'n' BIGGER THAN 0!"
	end if
    else
	put "ERROR! ENTER A VALID INTEGER!"
    end if
end loop

for i : 0 .. n by 1
    put x**i
    sum += x ** i
end for
put "SUM:",sum
