var R := 4
for i : 1 .. R
    for l : 1 .. R - i
	put " "..
    end for
    
    for l : 1 .. i
	put "$"..
    end for
    for l : 2 .. i
	put "$"..
    end for
    put ""
end for
