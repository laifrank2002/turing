var played : int := 0
var quarters : int
var slot1 : int
var slot2 : int
var slot3 : int

get quarters
get slot1
get slot2
get slot3

procedure slotone
    if quarters > 0 then
	quarters -= 1
	slot1 += 1
	played += 1
	if slot1 = 35 then
	    quarters += 30
	    slot1 := 0
	end if
    end if
end slotone
    
procedure slottwo
    if quarters > 0 then
	quarters -= 1
	slot2 += 1
	played += 1
	if slot2 = 100 then
	    quarters += 60
	    slot2 := 0
	end if
    end if
end slottwo

procedure slotthree
    if quarters > 0 then
	quarters -= 1
	slot3 += 1
	played += 1
	if slot3 = 10 then
	    quarters += 9
	    slot3 := 0
	end if
    end if
end slotthree
loop
    slotone
    slottwo
    slotthree
    exit when quarters = 0
end loop

put "Martha plays ", played, " times before going broke."
