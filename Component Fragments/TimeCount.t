var last, now, count : int := 10 

last := Time.Elapsed 

put count 

loop 
     now := Time.Elapsed 
     if (now - last >= 1000) then 
	 count -= 1 
	 put count 
	 last := now 
     end if 
end loop 
 

