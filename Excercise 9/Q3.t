var input : string
var number : real
var isInches : boolean := true

loop
    put "Enter a height: " ..
    get input
    if strrealok (input) then
	number := strreal (input)
	exit
    else
	put "Error CODE 01 NOT A NUMBER!"
    end if
end loop

loop
    put "Is it inches : " ..
    get input
    case input of
	label "inches", "INCHES", "inch", "Inch", "Inches", "in", "yes" :
	    isInches := true
	    exit

	label "CM", "cm", "Centimeters", "centimeters", "centi", "Centi","no" :
	    isInches := false
	    exit

	label :
	    put "ERROR"
    end case
end loop

if isInches = true then
    put number * 2.54, " centimeters."
else
    put number * 0.4, " inches."
end if

