%MockCCCJ4 Vox in Box

%Array
var N : int
get N

var line : array 1 .. N of string
var colony : array 1 .. N, 1 .. N of char
var sym : int := 0
for i : 1 .. N
    get line (i)
end for

for y : 1 .. N
    for x : 1 .. N
	var str := line (y)
	colony (x, y) := str (x)
    end for
end for

%Check Vertically.
