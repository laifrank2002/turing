procedure pattern (num : int)
    for decreasing i : num .. 1
	for k : 1 .. i
	    put "%" ..
	end for
	for k : 1 .. i
	    put "&" ..
	end for
	put ""
    end for
end pattern

pattern(5)
