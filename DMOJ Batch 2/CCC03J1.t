%
var t, s, h : int
var w : int
get t, s, h

w := 3 + (2 * s)
for i : 1 .. t
    put "*" ..
    for k : 1 .. s
	put " " ..
    end for
    put "*" ..
    for k : 1 .. s
	put " " ..
    end for
    put "*"
end for

for i : 1 .. w
    put "*" ..
end for

put ""

for i : 1 .. h
    for k : 1 .. (s + 1)
	put " " ..
    end for
    put "*"..
    for k : 1 .. (s + 1)
	put " " ..
    end for
    put ""
end for
