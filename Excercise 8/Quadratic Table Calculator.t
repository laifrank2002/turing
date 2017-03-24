var rows := 6
const SPACE := 7
var xSqCo : real
var xCo : real
var b : real
var fd : real
var ffd : real
var Y : real
var fY : real
var sd : real

loop
    get xSqCo
    put "x", chr (178)
    get xCo
    put "x"
    get b

    %Headers
    put "X" : SPACE, "Y" : SPACE, "FD" : SPACE, "SD" : SPACE

    for x : 1 .. rows
	%X
	put x : SPACE ..
	%Y
	Y := (xSqCo * (x ** 2)) + (xCo * x) + b
	put  Y : SPACE ..
	%FD
	if x not= 1 then
	    fd := Y - fY
	    put fd : SPACE ..
	else
	    put "N/A" : SPACE ..
	end if
	%SD
	if x > 2 then
	    sd := fd - ffd
	    put sd : SPACE
	else
	    put "N/A" : SPACE
	end if

	%R LOGIC
	if x > 1 then
	    ffd := fd
	end if
	fY := Y
    end for
end loop
