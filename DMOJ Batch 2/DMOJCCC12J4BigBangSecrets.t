var k : int
var s : int
var input : string
var letter : int

get k
get input

for i : 1.. length(input)

    letter := ord(input(i)) - 64
    s := (3 * i) + k
    letter -= s
    %Wrapper
    if letter > 26 then
	letter -= 26
    elsif letter < 1 then
	letter += 26
    end if
    put chr(64+letter)..
end for
