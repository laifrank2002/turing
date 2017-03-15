var movements : int := 0
var input : string
var next : char
get input :*

var p : int
var x : int := 1
var y : int := 1
var newx : int
var newy : int

function positive (number : int) : int
    if number < 0 then
	result (number * -1)
    else
	result number
    end if
end positive

for i : 1 .. length (input)
    next := input (i)
    if next >= 'A' and next <= 'Z' then
	p := ord (next) - ord ('A') + 1
	newx := (p - 1) div 6 + 1
	newy := (p - 1) mod 6 + 1
    elsif next = ' ' then
	newx := 5
	newy := 3
    elsif next = '-' then
	newx := 5
	newy := 4
    elsif next = '.' then
	newx := 5
	newy := 5
    end if
    movements := movements + positive (newx - x) + positive (newy - y)
    x := newx
    y := newy
end for
movements += positive (x - 6) + positive (y - 5)

put movements
