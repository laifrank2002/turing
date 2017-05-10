var arraylim : int := 0
var list : flexible array 1 .. arraylim of string
var fileID : int

open : fileID, "data.txt", get

procedure getNew
    arraylim += 1
    new list, arraylim
    get : fileID, list (arraylim)
end getNew

loop
    exit when eof(fileID)
    getNew
end loop

function isHigher (word1, word2 : string) : boolean
    if Str.Lower(word1) >= Str.Lower(word2) then
	if word1 > word2 then
	    result true
	else 
	    result false
	end if
    else
	result false
    end if
end isHigher

loop
    var token : boolean := true
    for i : 1 .. arraylim-1
	if isHigher(list(i), list(i+1)) then
	    var place : string := list(i)
	    list(i) := list(i+1)
	    list(i+1) := place
	    token := false
	end if
    end for
    exit when token = true
end loop

for i : 1 .. arraylim
    put list(i)
end for
