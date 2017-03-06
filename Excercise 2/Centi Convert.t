const pi : real := 3.14159      %PI, for some reason
const inchcenti : real := 2.54  %Inches in a centimeters
const centiinch : real := 0.39  %Centimeters in an inch
var input : string              %Input
var minput : string             %Num Input
var answer : real               %Output
loop                            %Beginning
    put "Do you want to convert inches to centimeters or vice-versa? y for yes, n for vice-versa. "..
    get input    
    exit when input = "y" or input = "n"
end loop

loop
    % If YES
    if input = "y" then
	put "Enter inches! "..
	get minput
    
	if strrealok (minput) then
	    answer := strreal (minput)
	    put "That is ", answer * inchcenti, " centimeters!"
	    loop
		put "Do you want to convert inches to centimeters or vice-versa? y for yes, n for vice-versa. "..
		get input 
		exit when input = "y" or input = "n"
	    end loop
	end if
    % END IF YES
    % If NO
    else
	put "Centimeters please! "..
	get minput
	
	if strrealok (minput) then
	    answer :=strreal (minput)
	    put "That is ", answer * centiinch, " inches!"
	    loop
		put "Do you want to convert inches to centimeters or vice-versa? y for yes, n for vice-versa. "..
		get input 
		exit when input = "y" or input = "n"
	    end loop
	end if
    % END IF NO
    end if
    
end loop
