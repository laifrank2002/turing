%CCC '17 S1 - Sum Game
var N : int
var K : int := 0
get N

var swifts : array 1 .. N of int
var semaphores : array 1 .. N of int

var swifts_total : int := 0
var semaphores_total : int := 0


for i : 1 .. N
    get swifts(i)
end for

for i : 1 .. N
    get semaphores(i)
end for

for i : 1 .. N
    swifts_total += swifts(i)
    semaphores_total += semaphores(i)
    if swifts_total = semaphores_total then
	K := i
    end if
end for
put K
