unit
module User
    export IntInput,StringInput,RealInput
    function IntInput () : int
	var word : string
	var num : int

	loop
	    put "Enter a value."
	    get word
	    if strintok (word) then
		result strint (word)
	    else
		put "ERROR!"
	    end if
	end loop

    end IntInput
    
    function RealInput () : real
	var word : string
	var num : real

	loop
	    put "Enter a value."
	    get word
	    if strrealok (word) then
		result strreal (word)
	    else
		put "ERROR!"
	    end if
	end loop

    end RealInput
    
    function StringInput () : string
	var word : string
	put "Enter a word."
	get word
	result word
    end StringInput
end User