const arrayUPPER := 10
var list : flexible array 1 .. arrayUPPER of int
var sortedlist : array 1 .. arrayUPPER of int
var unsorted : int := arrayUPPER

var fileID : int

open : fileID, "data.txt", get

for i : 1 .. 10
    get : fileID, list (i)
end for

for i : 1 .. 10
    var smallest : int := list (1)
    var where : int := 1
    % finding smallest
    for p : 1 .. unsorted
	if smallest > list (p) then
	    smallest := list (p)
	    where := p
	end if
    end for
    % swapping
    sortedlist(i) := list(where)
    list(where) := list(unsorted)
    unsorted -= 1
    new list, unsorted
end for

for i : 1 .. 10
    put sortedlist(i)
end for
