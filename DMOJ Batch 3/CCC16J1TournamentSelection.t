var w : int := 0
var a : string

for i : 1 .. 6
    get a
    if a = "W" then
	w += 1
    end if
end for

if w > 4 then
    put 1
elsif w > 2 then
    put 2
elsif w > 0 then
    put 3
else
    put -1
end if

