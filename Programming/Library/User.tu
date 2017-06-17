unit
module User
    
    % Main Export Machine
    export StringInput, IntInput, RealInput, CharInput

    % Gets Strings
    function StringInput () : string
	var input : string
	% Main Component
	loop
	    put "Enter a string value. "..
	    get input
	    result input
	end loop
    end StringInput
    
    % Gets Integers
    function IntInput () : int
	var input : string
	% Main Component
	loop
	    put "Enter an Integer value. "..
	    get input
	    if strintok(input) then
		result strint(input)
	    else
		put "Error, enter a valid Integer value. "
	    end if
	end loop
    end IntInput

    % Gets Reals
    function RealInput () : real
	var input : string
	% Main Component
	loop
	    put "Enter a real value. "..
	    get input
	    if strrealok(input) then
		result strreal(input)
	    else
		put "Error, enter a valid real value. "
	    end if
	end loop
    end RealInput

    % Gets Characters
    function CharInput () : char
	var input : string
	% Main Component
	loop
	    put "Enter a character value. "..
	    get input
	    if length(input) = 1 then
		result input(1)
	    else
		put "Enter only one character. "
	    end if
	end loop
    end CharInput

end User
