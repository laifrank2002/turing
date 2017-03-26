%MockCCCJ3 Problem-setting Pandemonium(Junior)
var N : int
get N
var X : array 1 .. N of int
var problems : int := 0

for i : 1 .. N
    get X(i)
    %This checks to see if any problems are done
    var token : boolean := true
    for p : 1 .. (i - 1)
	if X(i) = X(p) then
	    token := false
	end if
    end for
    
    if token = true then
	problems += 1
    end if
    
end for
put problems
