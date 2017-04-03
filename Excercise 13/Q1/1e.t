var current : string
var input : string

get current

loop
    get input
    exit when input = "EXIT" or input = "exit"
    if length(input) < length(current) then
	current := input
    end if
end loop
put current
