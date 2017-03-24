const RN := 5
for i : 1 .. RN
    for k : 1 .. RN - i
	put " " ..
    end for

    for k : 1 .. i
	put i ..
    end for
    put ""
end for
