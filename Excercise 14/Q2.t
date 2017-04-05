var num : real

for i : 1 .. 10
    rand(num)
    num *= 10
    num += 50
    put num : 12 : 10
end for 

/*
var count : int := 0
loop
    rand(num)
    num *= 10
    num += 50
    %put num : 12 : 10
    count += 1
    if num = 50 then
	put "It took ", count, " tries to get to 50."
	exit
    end if
end loop
*/
