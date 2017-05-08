const ARRAY_UPPER := 10
var temp : array 1 .. ARRAY_UPPER of real
var fileID : int
var high, low : real
var average : real := 0

open : fileID, "temp.txt", get

for i : 1 .. ARRAY_UPPER
    get : fileID, temp (i)
end for

high := temp(ARRAY_UPPER)
low := temp(ARRAY_UPPER)

for decreasing i : ARRAY_UPPER .. 1
    put temp (i)
    if temp(i) > high then
	high := temp(i)
    elsif temp(i) < low then
	low := temp(i)
    end if
    average += temp(i)
end for
put "HIGH:",high
put "LOW: ",low
put "AVG: ",average / ARRAY_UPPER
close : fileID
