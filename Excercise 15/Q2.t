var input : string

put "Enter any word to start. Enter exit at any time to exit."

loop
    var vowels : int := 0
    get input
    if index(input,"st") not= 0 then
	put "The letter pattern st occurs in this word."
    end if
    for i : 1 .. length(input)
	if index("aeiouAEIOU",input(i)) not= 0 then
	    vowels += 1
	end if
    end for
    put "There are ",vowels," vowels in the word."
end loop
