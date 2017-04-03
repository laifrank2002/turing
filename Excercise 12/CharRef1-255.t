%Char Ref
var count : int := 0
var gcount : int := 0
for i : 1 .. 255
    put chr(count)..
    count += 1
    gcount += 1
    if gcount >= 20 then
	put ""
	gcount := 0
    end if
end for

