
var infinity1 : string
var infinity2 : string

get infinity1, infinity2

var infinityvalue1 : int := 0
var infinityvalue2 : int := 0

var input : string
var digit : int
var digitat : char

for i : 1 .. length (infinity1)
    %Digit Value
    digitat := Str.Upper(infinity1(i))
    if strintok(infinity1(i))then
	digit := strint(infinity1(i))
    else
	case digitat of
	    label "A": digit := 10
	    label "B": digit := 11
	    label "C": digit := 12
	    label "D": digit := 13
	    label "E": digit := 14
	    label "F": digit := 15
	    label :
	end case
    end if
    %Converting
    infinityvalue1 += digit * (16 ** (length (infinity1) - i))
end for

for i : 1 .. length (infinity2)
    %Digit Value
    digitat := Str.Upper(infinity2(i))
    if strintok(infinity2(i))then
	digit := strint(infinity2(i))
    else
	case digitat of
	    label "A": digit := 10
	    label "B": digit := 11
	    label "C": digit := 12
	    label "D": digit := 13
	    label "E": digit := 14
	    label "F": digit := 15
	    label :
	end case
    end if
    %Converting
    infinityvalue2 += digit * (16 ** (length (infinity2) - i))
end for

if infinityvalue1 + infinityvalue2 > 1061109567 then
    put "Yes"
else
    put "No"
end if
