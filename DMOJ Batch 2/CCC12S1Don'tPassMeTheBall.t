%
var combinations : int := 0
var comb : boolean
var J : int
get J
var a, b, c, d : int
a := J
b := 0
c := 0
d := 0
loop
    if d < J then
	d += 1
    end if
    if a > b and b > c and c > d then
	combinations += 1
    end if
    exit when b >= a and c >= a and b >= a
    if c = J then
	c := 0
	b += 1
    end if
    if d = J then
	d := 0
	c += 1
    end if
end loop

put combinations
