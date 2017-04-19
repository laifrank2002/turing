procedure patty (num : int)
    for i : 1 .. num
	put repeat(" ",i-1),repeat("*",num+1-i)
    end for
end patty

patty(6)
