var input : string
var num : int

loop
    get input
    if strintok(input) then
	num := strint(input)
	exit
    end if
end loop
for i : 0 .. 13 by 1
    put i:2, " x ", num:2, " = ", num*i:3
end for
