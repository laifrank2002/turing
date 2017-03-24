const RN := 5
var space : int := round(RN**0.1) + 1
for i : 1 .. RN
    for n : 1 .. RN - i
	put " " : space ..
    end for
    for n : 1 .. i
	put n : space..
    end for
    for decreasing n : i - 1 .. 1
	put n : space..
    end for
    put ""
end for
