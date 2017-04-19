import User

var fileId : int
function isPalindrome (num : int) : boolean
    var number : string := intstr(num)
    var newnum : string := ""
    for decreasing i : length(number) .. 1
	newnum += number(i)
    end for
    if newnum = number then
	result true
    else
	result false
    end if
end isPalindrome

open : fileId , "palindrome.txt", put

for i : 1 .. 10000
    if isPalindrome(i) then
	put : fileId, i
    end if
end for

close : fileId
