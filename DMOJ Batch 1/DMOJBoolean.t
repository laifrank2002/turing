var nots : int
var input : string

get input : *
if ((length (input) - 4) mod 4 = 0) then
    if ((length (input) - 4) div 4) mod 2 = 0 then
	put "True"
    else
	put "False"
    end if
else
    if ((length (input) - 5) div 4) mod 2 = 0 then
	put "False"
    else
	put "True"
    end if
end if
