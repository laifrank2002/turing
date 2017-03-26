%CCC '17 J1 - Quadrant Selection
var x,y : int
get x,y

if x > 0 then
    if y > 0 then
	put 1
    else
	put 4
    end if
else
    if y > 0 then
	put 2
    else
	put 3
    end if
end if
