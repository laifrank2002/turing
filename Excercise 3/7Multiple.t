const MULTIPLE : int := 7
var input : string
var number : int

loop
    put "Get me an integer! "..
    get input
    if strintok(input) then
	number = strint (input)
	put number
	exit
    end if
end loop

if number mod MULTIPLE not= 0 then
    put "THIS IS NOT A MULTIPLE OF 7!"
else
    put "It is!"
end if
