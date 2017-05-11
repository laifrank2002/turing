var place : int := 1
var list : array 1 .. 10 of int
var smallest_pos : int := 1
for i : 1 .. 10
    get list(i)
end for

for i : 1 .. 10
    var smallest : int := list(place)
    
    for p : place .. 10
	if smallest >= list(p) then
	    smallest := list(p)
	    smallest_pos := p
	end if
    end for
    
    var temp : int := list(place)
    list(place) := list(smallest_pos)
    list(smallest_pos) := temp
    place += 1
end for

for i : 1 .. 10
    put list(i)
end for
