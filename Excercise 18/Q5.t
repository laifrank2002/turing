var input : array 1 .. 3 of string

for i : 1 .. 3
    put "Enter your ",i,"th word!"
    get input(i)
end for

function glue (w1 : string, w2 : string ) : string
    result w1 + w2
end glue

function reverse (word : string) : string
    var newword : string := ""
    for decreasing i : length(word) .. 1
	newword += word(i)
    end for
    result newword
end reverse

put glue(reverse(glue(input(1),input(2))),input(3))
