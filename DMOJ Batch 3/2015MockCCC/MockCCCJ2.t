%MockCCCJ2 Lowest Exam Mark
var P : int
var Q : int
var W : real
var X : int := 0
var FM : real

get P
get Q
get W
W := W/100

%X := round((Q-(P*(1-W)))/W)
for i : 0 .. 100
    FM := P*(1-W) + W * i
    if round(FM) >= Q then
	X := i
	put X
	exit
    elsif i = 100 and round(FM) < Q then
	put "DROP THE COURSE"
    end if
end for

