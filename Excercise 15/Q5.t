var input : string
get input
for i : 1 .. length(input)
    put chr(ord(input(i))+1)..
end for
