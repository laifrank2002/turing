import User
%var inputNum : int := User.IntInput()
%var stringNum : string := intstr(inputNum)
var isArmstrong : boolean := false
var fileId : int
function checkIsArmstrong (num : string) : boolean
    var resultNum : int := 0
    for decreasing i : length (num) .. 1
	resultNum += strint (num (length (num) - i + 1)) ** 3
    end for

    if resultNum = strint (num) then
	result true
    else
	result false
    end if
end checkIsArmstrong

open : fileId, "armstrong.txt", put

for i : 1 .. 10000
    if checkIsArmstrong (intstr(i)) then
	put "true"
	put : fileId, i
    else
	%put "false"
    end if
end for
