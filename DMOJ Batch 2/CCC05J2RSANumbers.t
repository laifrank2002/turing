var low, high : int
get low, high

var RSA : int := 0
var divisors : int := 0

for i : low .. high
    for k : 1 .. i
	if i mod k = 0 then
	    divisors += 1
	end if
    end for
    if divisors = 4 then
	RSA += 1
    end if
    divisors := 0
end for
put "The number of RSA numbers between ", low, " and ",high," is ",RSA
