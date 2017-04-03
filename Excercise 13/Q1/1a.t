var current : string
var input : string


%Init
put "Enter a word"
get input
current := input
%Loop
loop
    put "Enter a word, enter EXIT to exit."
    get input
    exit when input = "EXIT"
    if input > current then
	current := input
    end if
end loop
put "CLOSE"
put current
