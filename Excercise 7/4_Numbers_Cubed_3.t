var num : int
var bnum : int
var input : string
var sum : int := 0
put "Enter lower number then enter higher number."
loop
    get input
    if strintok(input) then
	bnum := strint(input)
	exit
    else
	put "Error, not an int."
    end if
end loop
loop
    get input
    if strintok(input) then
	num := strint(input)
	exit
    else
	put "Error, not an int."
    end if
end loop

for i : bnum .. num
    sum += i**3
end for
put sum
