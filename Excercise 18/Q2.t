const TOTEST := 7

function IsMultiple (toTest : int, toInput : int) : boolean
    if toInput mod toTest = 0 then
	result true
    else
	result false
    end if
end IsMultiple

if IsMultiple(TOTEST, 2100) then
    put "IS MULTIPLE!"
else
    put "IS NOT MULTIPLE!"
end if
