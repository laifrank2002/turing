const MAXNUM := 1000
function double (input : int) : int
    var num : int := input
    loop
	if num <= MAXNUM then
	    num *= 2
	else
	    exit
	end if
    end loop
    result num
end double

put double (51)
