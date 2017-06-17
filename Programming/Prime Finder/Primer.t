% Prime Finder
var fileID : int
var inputLine : string
var input : flexible array 1 .. 1 of string
var fileLine : int := 0
var fileName := "primes.txt"

procedure fileInit
    open : fileID, fileName, get
    loop
	exit when eof (fileID)
	fileLine += 1
	get : fileID, inputLine : *
	new input, fileLine
	input (fileLine) := inputLine
    end loop
    close : fileID
    open : fileID, fileName, put
    for i : 1 .. fileLine
	put : fileID, input (i)
    end for
end fileInit

procedure tack (output : string)
    fileLine += 1
    new input, fileLine
    input (fileLine) := output
    put : fileID, input(fileLine)
end tack

function isPrime (number : int) : boolean
    for i : 2 .. number - 1
	if number mod i = 0 then
	    result false
	end if
    end for
    result true
end isPrime

fileInit

for i : strint(input(fileLine)) .. 2147483647
    if isPrime(i) then
	tack(intstr(i))
    end if
end for
