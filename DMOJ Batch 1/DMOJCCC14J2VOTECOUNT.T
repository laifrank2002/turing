var input : string
var count : int := 1
var votes : int
var a : int := 0
var b : int := 0
get votes
get input

loop
    if input(count) = "A" then
	a += 1
    else
	b += 1
    end if
    
    exit when count = votes
    count += 1
end loop

if a > b then
    put "A"
elsif b > a then
    put "B"
elsif a = b then
    put "Tie"
end if
