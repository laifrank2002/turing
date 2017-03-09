var input : string
var full_Name : string
var times : int

get full_Name :*

loop
    get input
    if strintok (input) then
	times := strint(input)
	exit
    end if
end loop

for i : 1 .. times
    put "Greetings ",full_Name, "!"
end for
