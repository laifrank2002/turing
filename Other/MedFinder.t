var n : int
var l : int
var h : int
var c : int

var sorted : boolean := true
var median : real
var sum : int := 0
var mid : int
get n, l, h, c

var data : array 1 .. n of int

procedure start
    for i : 1 .. n
	randint (data (i), l, h)
	sum += data (i)
    end for
end start

procedure sortLowHigh
    sorted := true
    for i : 1 .. n - 1
	if data (i) > data (i + 1) then
	    var place : int
	    place := data (i)
	    data (i) := data (i + 1)
	    data (i + 1) := place
	    sorted := false
	end if
    end for
end sortLowHigh

%Find Median
procedure findMedian
    if n mod 2 = 0 then
	mid := round (n / 2)
	median := (data (mid) + data (mid + 1)) / 2
    else
	mid := round (((n - 1) / 2) + 1)
	median := data (mid)
    end if
end findMedian

for cycle : 1 .. c
    start
    %MEAT
    loop
	sortLowHigh
	exit when sorted = true
    end loop
    %Put Module
    findMedian
    for i : 1 .. n
	put data (i), " " ..
    end for
    put ""
    put "Median : ", median
    put "Average Deviation : ", (sum - (n * median)) / n
    put "Cycle #", cycle
    sum := 0
end for
