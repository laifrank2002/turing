%
var input : string
var f : char
var next : char
var after : char
loop
    get input
    exit when input = "quit!"
    f := input (length (input) - 2)
    next := input (length (input) - 1)
    after := input (length (input))
    if length (input) > 4 and f not= "a" and f not= "e" and f not= "i" and f not= "o" and f not= "u" then
	put input (1 .. (length (input) - 2)) + "our"
    else
	put input
    end if
end loop
