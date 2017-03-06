var count1, count2 : int := 0

loop
    count1 += 1
    count2 := count1
    loop 
	put "*"..
	count2 -= 1
	exit when count2 = 0
    end loop
    put "*"
end loop
