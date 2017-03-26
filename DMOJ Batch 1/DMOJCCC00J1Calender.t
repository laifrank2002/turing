const WEEK : int := 7
var months : string := "Sun Mon Tue Wed Thr Fri Sat"
var count : int := 0
var count2 : int
var count3 : int := 0
var input1, input2 : int
get input1, input2

put months

for k : 1 .. input1 - 1
    put "    " ..
end for

for k : 1 .. (WEEK - input1 + 1)
    count += 1
    put count : 4 ..
end for

for i : 1 .. (input2 div WEEK) - 1
    put ""
    for k : 1 .. WEEK
	count += 1
	put count : 4 ..
    end for
end for

put ""
count2 := input2 - count

loop
    exit when count2 = 0
    count += 1
    count2 -= 1
    count3 += 1
    put count : 4 ..
    if count3 = 7 then
	put ""
    end if
end loop

