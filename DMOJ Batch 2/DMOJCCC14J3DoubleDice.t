var aPoint : int := 100
var mPoint : int := 100

var aRoll :int
var mRoll :int

var count : int
get count
for i : 1 .. count
    get aRoll, mRoll
    if aRoll > mRoll then
	mPoint -= aRoll
    elsif mRoll > aRoll then
	aPoint -= mRoll
    end if
end for

put aPoint
put mPoint
