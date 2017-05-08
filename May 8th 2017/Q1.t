var fileName : string := "data.txt"
var fileID : int
var input : string
var item : array 1 .. 10 of int
var name : array 1 .. 10 of string

open : fileID, fileName, get

for i : 1 .. 10
    get : fileID, name(i)
    get : fileID, item(i)
end for

loop
    put "Enter something to look for! "..
    get input
    var found : boolean := false
    for i : 1 .. 10
	if input = name(i) then
	    put item(i), " " ,name(i), "s are present!"
	    found := true
	end if
    end for
    if found = false then
	put "Item not found?"
    end if
end loop

close : fileID
