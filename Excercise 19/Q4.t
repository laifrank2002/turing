import User

function one (input : string) : string
    var word : string := input
    var newword : string := ""
    for i : 1 .. length (word)
	if word (i) = "a" then
	    newword += "aa"
	else
	    newword += word (i)
	end if
    end for
    result newword
end one

function two (input : string) : string
    var word : string := input
    var newword : string := ""
    for i : 1 .. length (word)
	if word (i) = "b" then
	    newword += "c"
	else
	    newword += word (i)
	end if
    end for
    result newword
end two

function three (input : string) : string
    var word : string := input
    var newword : string := ""
    var ranC : int
    randint(ranC, 1, length(input))
    for i : 1 .. length(word)
	newword += word(i)
	if i = ranC then
	    newword += "c"
	end if
    end for
    result newword
end three

var input : string := User.StringInput ()

var FunctionCall : int
randint(FunctionCall, 2, 1000)
for i : 1 .. FunctionCall
    var Random : int
    randint(Random, 1 , 3)
    if Random = 1 then
	input := one(input)
    elsif Random = 2 then
	input := two(input)
    else
	input := three(input)
    end if
end for

put input
