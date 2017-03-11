var numDown, numUp : int
var input : string
var sum : int := 0

loop
    put "Enter two positive Integers! " ..
    loop
	get input
	if strintok (input) then
	    numDown := strint (input)
	    exit
	end if
    end loop
    loop
	get input
	if strintok (input) then
	    numUp := strint (input)
	    exit
	end if
    end loop
    if numDown < numUp then
	exit
    else
	put "Error, num1 is more than num2!"
    end if
end loop


for i : numDown .. numUp
    sum += i
end for

put sum
