import L17
var y,m,x,b : real
var input : string
var toConvert : string := ""
put "Enter an equation. y = mx + b "..
get input :*
input := input (5 .. *)

toConvert := ""
for i : 1 .. length(input)
    if index("1234567890",input(i)) not= 0 then
	toConvert += input(i)
    else
	exit
    end if
end for
m := strreal(toConvert)

input := input (length(toConvert)+5 .. *)

toConvert := ""
for i : 1 .. length(input)
    if index("1234567890",input(i)) not= 0 then
	toConvert += input(i)
    else
	exit
    end if
end for

b := strreal(toConvert)

loop
    loop
	put "What is x? "..
	get input
	if strintok(input) then
	    x := strint(input)
	    exit
	end if
    end loop
    put L17.Q3(x,m,b)," is y."

end loop
