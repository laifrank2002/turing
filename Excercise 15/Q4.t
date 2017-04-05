var input : string
get input

for i : 1 .. length(input)
    if input(i) >= "a" and input(i) <= "z" then
	put chr(ord(input(i)) - 32)..
    elsif input(i) >= "A" and input(i) <= "Z" then
	put chr(ord(input(i)) + 32)..
    else
	put input(i)..
    end if
end for
