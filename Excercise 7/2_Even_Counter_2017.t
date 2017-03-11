var input1, input2 : string
var num1, num2 : int
loop
    put "Enter two EVEN numbers. "..
    get input1, input2
    if strintok (input1) and strintok (input2) then
	num1 := strint(input1)
	num2 := strint(input2)
	if num1 mod 2 = 0 and num2 mod 2 = 0 then
	    exit
	else
	    put "EVEN INTEGERS! "
	end if
    else
	put "Put an ACTUAL INTEGER! PLEASE..."
    end if
end loop

if num1 > num2 then
    for i : num2 .. num1 by 2
	if i not= num1 then
	    put i, ", "..
	else
	    put i
	end if
    end for
elsif num2 > num1 then
    for i : num1 .. num2 by 2
	if i not= num2 then
	    put i, ", "..
	else
	    put i
	end if
    end for
else
    put "They are the same number."
end if
