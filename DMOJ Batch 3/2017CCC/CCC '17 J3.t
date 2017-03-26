%CCC '17 J3 - Exactly Electrical

var x,y : int
var dx, dy : int
var charge : int
var dist : int

get x,y
get dx, dy
get charge

dist := abs(dx-x) + abs(dy - y)

if  (charge - dist) mod 2 = 0 and charge >= dist then
    put "Y"
else
    put "N"
end if
