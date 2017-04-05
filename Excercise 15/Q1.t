%
var seven : int := 0
var longest : string  := ""
var shortest : string := ""
var totalLength : int := 0
var totalWords : int := 0
var average : real
var input : string
loop
    loop
	put "Prompt, enter any word to start. You may exit this program at any time by entering 'exit'."
	get input
	exit when input = "exit"
	if length(input) = 7 then
	    seven += 1
	end if
	if length(input) > length(longest) then
	    longest := input
	end if
	if length(shortest) = 0 then
	    shortest := input
	elsif length(input) < length(shortest) then
	    shortest := input
	end if
	totalLength += length(input)
	totalWords += 1
    end loop
    exit when input = "exit"
end loop
average := totalLength / totalWords
if totalWords not= 0 then
    put "The longest word was ",longest,"."..
    put "The shortest word was ",shortest,"."..
    put "And the average wordlength was ",average : 0 : 2, " letters."
end if

