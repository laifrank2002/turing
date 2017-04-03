%1g
var input : string
%Array INIT
var number : int
get number
var list : array 1 .. number of string 
%Input
for i : 1 .. number
    get list(i)
end for
%Sorting
procedure sort
    loop
	var sorted : boolean := true
	%Checking and swapping
	for i : 2 .. number
	    if list (i) < list (i-1) then
		sorted := false
		var temp : string := list(i)
		list (i) := list(i-1)
		list (i-1) := temp
	    end if
	end for
	exit when sorted = true
    end loop
end sort

sort
put "Sorted LIST:", skip
for i : 1 .. number
    put list(i)
end for
