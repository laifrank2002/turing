var h : int
get h


for i : 1 .. h by 1
    for k : 1 .. i
	if i mod 2 not= 0 then
	    put "*"..
	end if
    end for
    
    for k : 1 .. 2 * (h - i)
	if i mod 2 not= 0 then
	    put " "..
	end if
    end for
    
    for k : 1 .. i
	if i mod 2 not= 0 then
	    put "*"..
	end if
    end for
    if i mod 2 not= 0 then
    put ""
    end if
end for

for decreasing i : h .. 1 by 1
    for k : 1 .. i
	if i mod 2 not= 0 and i not = h then
	    put "*"..
	end if
    end for
    
    for k : 1 .. 2 * (h - i)
	if i mod 2 not= 0 and i not = h then
	    put " "..
	end if
    end for
    
    for k : 1 .. i
	if i mod 2 not= 0 and i not = h then
	    put "*"..
	end if
    end for
    if i mod 2 not= 0 and i not = h then
    put ""
    end if
end for
