var packages : int := 0
var weight : real := 0
var packageWeight : real := 0

loop
    get weight
    exit when weight = 0.00
    if weight > 0 then
	packageWeight += weight
	packages += 1
    else
	put "ERROR! Negative Integer."
    end if    
end loop

put skip
put packageWeight/packages
