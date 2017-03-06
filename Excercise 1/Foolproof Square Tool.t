%Var Declared
var input : string
var area : real
var sl : real
var p : real
%Debugging
loop
    %Area Tool
    put "Enter your area? "..
    get input
    %Is it good?
    if strrealok (input) then
	area := strreal (input)
	%Negative Insults
	if area < 0 then
	    put "You idiot, you can't have negative area!"
	else
	    exit    %So it probably is OK
	end if    
    else
	put "That's not a number, silly!"
    end if
    
end loop

%Meat of the program
sl := area ** 0.5
p := sl * 4
put "Side length is: ", sl : 0 : 2, " cm, Perimeter is: ", p : 0 : 2, " cm."
