const WEEK : int := 7
var months : string := "Sun Mon Tue Wed Thr Fri Sat"
var count : int := 1
var count2 : int
var input1, input2 : int
get input1, input2

put months

for k : 1 .. input1 - 1
    put "    " ..
end for

for k : 1 .. (WEEK - input1 + 1)
    put count : 4 ..
    count += 1
end for

for i : 1 .. (input2 div WEEK) - 1
    put ""
    for k : 1 .. WEEK
	put count : 4 ..
	count += 1
    end for
end for

put ""
count2 := input2 - count + 1
loop
    exit when count2 = 0
    put count : 4 ..
    count += 1
    count2 -= 1
end loop

