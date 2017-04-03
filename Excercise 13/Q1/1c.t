const LENGTH_OF_STRING := 3

var input : string
var current : string

%INIT
%INPUT
loop
    put "Enter a 3 letter word"
    get input
    if length (input) = LENGTH_OF_STRING then
	exit
    else
	put "ERROR! ENTER A 3! THREE! Letter word."
    end if
end loop
current := input

loop
    %EXIT?
    put "EXIT?"
    get input
    exit when input = "EXIT"
    %INPUT
    loop
	put "Enter a 3 letter word"
	get input
	if length (input) = LENGTH_OF_STRING then
	    exit
	else
	    put "ERROR! ENTER A 3! THREE! Letter word."
	end if
    end loop
    %Processing
    if input > current then
	current := input
    end if
end loop
put current
