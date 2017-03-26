%CCC '17 J2 - Shifty Sum
var N : int
var k : int

var sum : int := 0

get N
get k

for i : 0 .. k
    sum += N * (10 ** (i))
end for
put sum
