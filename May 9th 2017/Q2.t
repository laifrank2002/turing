var listOfWordsNumber : int := 1
var listOfWords : flexible array 1 .. listOfWordsNumber of string
var fileID : int

open : fileID, "data.txt", get
listOfWords (1) := "AFIRSTUNDEFINED"
function isHigher (word1, word2 : string) : boolean
    if Str.Lower (word1) <= Str.Lower (word2) then
	if word1 <= word2 then
	    result true
	else
	    result false
	end if
    else
	result false
    end if
end isHigher

procedure getNew
    listOfWordsNumber += 1
    new listOfWords, listOfWordsNumber
    get : fileID, listOfWords (listOfWordsNumber)
end getNew

loop
    exit when eof (fileID)
    getNew
end loop

loop
    var token : boolean := true
    for i : 2 .. listOfWordsNumber
	if isHigher (listOfWords (listOfWordsNumber - 1), listOfWords (listOfWordsNumber)) then
	    var place : string := listOfWords (listOfWordsNumber - 1)
	    listOfWords (listOfWordsNumber - 1) := listOfWords (listOfWordsNumber)
	    listOfWords (listOfWordsNumber) := place
	    token := false
	end if
    end for
    exit when token = true
end loop

for i : 1 .. listOfWordsNumber
    put listOfWords (i)
end for
