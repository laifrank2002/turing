var input : string
var number : string := ""
var phone : int

get phone
for k : 1 .. phone
    number := ""
    get input

    for i : 1 .. length(input)
	if index ("1234567890", input (i)) not= 0 then
	    number += input (i)
	else
	    case input (i) of
		label "A", "B", "C" :
		    number += "2"
		label "D", "E", "F" :
		    number += "3"
		label "G", "H", "I" :
		    number += "4"
		label "J", "K", "L" :
		    number += "5"
		label "M", "N", "O" :
		    number += "6"
		label "P", "Q", "R", "S" :
		    number += "7"
		label "T", "U", "V" :
		    number += "8"
		label "W", "X", "Y", "Z" :
		    number += "9"
		label :
	    end case
	end if
    end for
    %Trim to 10
    var placeholder : string := number
    number := ""
    for p : 1 .. 10
	number += placeholder(p)
    end for
    %Format
    put number(1 .. 3), "-", number(4 .. 6), "-", number(7 .. 10)
end for
