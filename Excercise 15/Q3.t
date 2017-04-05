var input : string

get input

for i : 1 .. length(input)
    if input(i) not= "s" then
	put input(i)..
    end if
end for
put ""
for i : 1 .. length(input)
    if input(i) < "A" or input(i) > "Z" then
	put input(i)..
    end if
end for
put ""
for i : 1 .. length(input)
    if index("aeiouAEIOU",input(i)) = 0 then
	put input(i)..   
    end if
end for
