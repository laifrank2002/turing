const group : int := 4
var input : string
var classroom : int

loop
    put "How many students in your class? "..
    get input
    if strintok (input) then
	classroom := strint(input)
	put classroom ," students are in your class!"
	if classroom mod group = 0 then
	    put "You can form exactly ", classroom div group, " groups of ", group, "."
	else
	    put "You can form ", classroom div group, " groups of ", group, " and there will be ", classroom mod group, " extra students without a group."
	end if
	exit
    end if
end loop
