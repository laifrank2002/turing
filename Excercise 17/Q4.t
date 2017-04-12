import L17
var input : string
put "Prompt : "..
get input :*
for i : 1 .. length(input)
    put L17.Q4(input(i))..
end for
