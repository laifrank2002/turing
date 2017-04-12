var input : string
put "Prompt sub i "..
get input

function reverse (word : string) : string
    var newword : string := ""
    for decreasing i : length(word) .. 1
	newword += word(i)
    end for
    result newword
end reverse

function isPalindrome (input : string, reverseWord : string) : boolean
    var isTrue : boolean := false
    if input = reverseWord then
	result true
    else
	result isTrue
    end if
end isPalindrome

if isPalindrome(input,reverse(input)) then
    put "Yes."
else
    put "I don't know."
end if
