%MockCCCJ1 - 416

var firstThree : string
var lastSeven : string

get firstThree, lastSeven
if length(firstThree) not= 3 or length(lastSeven) not= 7 then
    put "invalid"
else
    if firstThree = "416" then
	put "valuable"
    elsif firstThree = "647" or firstThree = "437" then
	put "valueless"
    else
	put "invalid"
    end if
end if
