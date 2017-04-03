var last, now, count : int := 10 

last := Time.Elapsed 

play ("A")

loop 
     now := Time.Elapsed 
     if (now - last >= 1000) then 
	 count -= 1 
	 play ("A")
	 last := now 
     end if 
end loop 
