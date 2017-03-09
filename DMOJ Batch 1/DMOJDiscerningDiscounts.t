var N : int     %Num of Items
var T : int     %Thereshold

get N
get T

var c : array 1 .. N of int
var d : array 1 .. N of int
var K : int := 0 %Accumulator Items
var i : int := 1 %IndexCount

loop
    get c(i)
    get d(i)
    if (c(i) * (1-(d(i)/100))) <= T then
	K += 1
    end if
    exit when i = N
    i += 1
end loop
put K
