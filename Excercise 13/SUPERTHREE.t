%
var word : string
var input : string
var option : string

procedure greet
    put "WORD " ..
    get input
    word := input
    put "OPTION 1 2 3 4 5 6? " ..
    get input
    option := input
end greet

procedure one
    for i : 1 .. length (word)
	if index ("aeiouAEIOU", word (i)) = 0 then
	    put "%" ..
	else
	    put word (i) ..
	end if
    end for
end one

procedure two
    for i : 1 .. length (word)
	if index ("r", word (i)) not= 0 then
	    put "R" ..
	else
	    put word (i) ..
	end if
    end for
end two

procedure three
    const character := "d"
    var where : int := index (word, character)
    if where not= 0 then
	for i : 1 .. where
	    put "*"..
	end for
	for i: where + 1 .. length(word)
	    put word(i)..
	end for
    end if
end three

procedure four
    var forwards : int := 1
    var input : string
    put "Forwards or backwards? " ..
    get input
    if Str.Lower (input) = "no" then
	forwards := -1
    end if
    for i : 1 .. length (word)
	put chr (ord (word (i)) + forwards) ..
    end for
end four

procedure five
    put Str.Upper(word)
    put Str.Lower(word)
end five

procedure six

end six

greet

case option of
    label "1" :
	one
    label "2" :
	two
    label "3" :
	three
    label "4" :
	four
    label "5" :
	five
    label "6" :
	six
    label :
end case
