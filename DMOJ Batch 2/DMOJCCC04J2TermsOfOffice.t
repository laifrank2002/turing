const LCM : int := 60
var x : int
var y : int

get x
get y

for i : x .. y
    if (i - x) mod 60 = 0 then
	put "All positions change in year ",i
    end if
end for
