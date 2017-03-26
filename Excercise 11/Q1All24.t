%Q1, all 24 Substrings
var word : string
var option : int

%Foward Procedures
forward procedure greet
forward procedure one
forward procedure two
forward procedure three
forward procedure four
forward procedure five
forward procedure six
forward procedure seven
forward procedure eight
forward procedure nine
forward procedure ten
forward procedure eleven
forward procedure twelve
forward procedure thirteen
forward procedure fourteen
forward procedure fifteen
forward procedure sixteen
forward procedure seventeen
forward procedure eighteen
forward procedure nineteen
forward procedure twenty
forward procedure twentyone
forward procedure twentytwo
forward procedure twentythree
forward procedure twentyfour

%Greet
body procedure greet
    loop
	put "Welcome to Q24, now, enter a word. Put exit to EXIT. " ..
	get word
	exit when word = "exit"
	put "Now enter your manipulation, from 1 to 24."
	put "1.Its letters one per line."
	put "2.Its letters in reverse order, one per line."
	put "3.It with its first and last letters exchanged. 'colour' becomes 'rolouc'."
	put "4.It with its first half exchanged with its second half."
	put "5.It with every vowel exchanged with 9."
	put "6.It with every consonant exchanged with 9."
	put "7.It with every vowel exchanged with its capital."
	put "8.It with every consonant exchanged with its capital."
	put "9.It with every vowel exchanged with the vowel which follows."
	put "10.It with exchanged case. For example: 'Colour' becomes 'cOLOUR.'"
	put "11.It with alternating upper and lower case."
	put "12.It with alternating lower and upper case."
	put "13.It with an upshifted first half."
	put "14.It with an upshifted second half."
	put "15.It with each letter separated by a blank space."
	put "16.It with each letter separated by an increasing number of blank spaces."
	put "17.It with each letter separated by a decreasing number of blank spaces."
	put "18.It centred horizontally."
	put "19.It centred horizontally, each letter separated by a blank space."
	put "20.It under a two-line ruler. For example:"
	put "21.It under a two-line ruler, centred horizontally."
	put "22.It under a ruler, centred with each letter separated by a blank space."
	put "23.It under a two-line ruler of user-specified length, centred horizontally."
	put "24.It under a ruler of x length,centred with letters separated by a blank space."
	put "Option : "..
	get option

	case option of
	    label 1 :
		one
	    label 2 :
		two
	    label 3 :
		three
	    label 4 :
		four
	    label 5 :
		five
	    label 6 :
		six
	    label 7 :
		seven
	    label 8 :
		eight
	    label 9 :
		nine
	    label 10 :
		ten
	    label 11 :
		eleven
	    label 12 :
		twelve
	    label 13 :
		thirteen
	    label 14 :
		fourteen
	    label 15 :
		fifteen
	    label 16 :
		sixteen
	    label 17 :
		seventeen
	    label 18 :
		eighteen
	    label 19 :
		nineteen
	    label 20 :
		twenty
	    label 21 :
		twentyone
	    label 22 :
		twentytwo
	    label 23 :
		twentythree
	    label 24 :
		twentyfour
	    label :
		put "ERROR! NOT RECONGNIZED!"
	end case
    end loop
end greet
%Universal Functions


%Q1
body procedure one
    for i : 1 .. length (word)
	put word (i)
    end for
end one
%Q2
body procedure two
    for decreasing i : length (word) .. 1
	put word (i)
    end for
end two
%Q3
body procedure three
    var newword : string := ""
    newword += word (*)
    newword += word (2 .. * -1)
    newword += word (1)
    put newword
end three
%Q4
body procedure four
    var newword : string := ""
    var lengthword : int := length (word)
    if lengthword mod 2 = 0 then
	newword += word (lengthword div 2 + 1 .. *)
	newword += word (1 .. lengthword div 2)
    else
	newword += word (lengthword div 2 + 1 .. *)
	newword += word (1 .. lengthword div 2)
    end if
    put newword
end four
%Q5
body procedure five
    var newword : string := ""
    for i : 1 .. length (word)
	var wordchar := word (i)
	case wordchar of
	    label "a", "e", "o", "i", "u", "A", "E", "O", "I", "U" :
		newword += "9"
	    label :
		newword += wordchar
	end case
    end for
    put newword
end five
%Q6
body procedure six
    var newword : string := ""
    for i : 1 .. length (word)
	var wordchar := word (i)
	var Lwordchar := Str.Lower (wordchar)
	if Lwordchar not= "a" and Lwordchar not= "e" and Lwordchar not= "o" and Lwordchar not= "i" and Lwordchar not= "u" then
	    newword += "9"
	else
	    newword += wordchar
	end if
    end for
    put newword
end six
%Q7
body procedure seven
    var newword : string := ""
    for i : 1 .. length (word)
	var wordchar := word (i)
	case wordchar of
	    label "a", "e", "o", "i", "u" :
		newword += Str.Upper (wordchar)
	    label :
		newword += wordchar
	end case
    end for
    put newword
end seven
%Q8
body procedure eight
    var newword : string := ""
    for i : 1 .. length (word)
	var wordchar := word (i)
	var Lwordchar := Str.Lower (wordchar)
	if Lwordchar not= "a" and Lwordchar not= "e" and Lwordchar not= "o" and Lwordchar not= "i" and Lwordchar not= "u" then
	    newword += Str.Upper (wordchar)
	else
	    newword += wordchar
	end if
    end for
    put newword
end eight
%Q9
body procedure nine
    var newword : string := ""
    for i : 1 .. length (word)
	var wordchar := word (i)
	if wordchar = "a" then
	    newword += "e"
	elsif wordchar = "e" then
	    newword += "i"
	elsif wordchar = "i" then
	    newword += "o"
	elsif wordchar = "o" then
	    newword += "u"
	elsif wordchar = "u" then
	    newword += "a"
	elsif wordchar = "A" then
	    newword += "E"
	elsif wordchar = "E" then
	    newword += "I"
	elsif wordchar = "I" then
	    newword += "O"
	elsif wordchar = "O" then
	    newword += "U"
	elsif wordchar = "U" then
	    newword += "A"
	else
	    newword += wordchar
	end if
    end for
    put newword
end nine
%Q10
body procedure ten
    var newword : string := ""
    for i : 1 .. length (word)
	var wordchar := word (i)
	if wordchar >= "A" and wordchar <= "Z" then
	    newword += Str.Lower (wordchar)
	elsif wordchar >= "a" and wordchar <= "z" then
	    newword += Str.Upper (wordchar)
	else
	    newword += wordchar
	end if
    end for
    put newword
end ten
%Q11
body procedure eleven
    var newword : string := ""
    var alternating : boolean := true
    for i : 1 .. length (word)
	var wordchar := word (i)
	if alternating = true then
	    alternating := false
	    newword += Str.Upper (wordchar)
	else
	    alternating := true
	    newword += Str.Lower (wordchar)
	end if
    end for
    put newword
end eleven
%Q12
body procedure twelve
    var newword : string := ""
    var alternating : boolean := false
    for i : 1 .. length (word)
	var wordchar := word (i)
	if alternating = true then
	    alternating := false
	    newword += Str.Upper (wordchar)
	else
	    alternating := true
	    newword += Str.Lower (wordchar)
	end if
    end for
    put newword
end twelve
%Q13
body procedure thirteen
    var newword : string := ""
    var lengthword : int := length (word)
    if lengthword mod 2 = 0 then
	newword += Str.Upper (word (1 .. lengthword div 2))
	newword += word (lengthword div 2 + 1 .. *)
    else
	newword += Str.Upper (word (1 .. lengthword div 2))
	newword += word (lengthword div 2 + 1 .. *)
    end if
    put newword
end thirteen
%Q14
body procedure fourteen
    var newword : string := ""
    var lengthword : int := length (word)
    if lengthword mod 2 = 0 then
	newword += word (1 .. lengthword div 2)
	newword += Str.Upper (word (lengthword div 2 + 1 .. *))
    else
	newword += word (1 .. lengthword div 2)
	newword += Str.Upper (word (lengthword div 2 + 1 .. *))
    end if
    put newword
end fourteen
%Q15
body procedure fifteen
    var newword : string := ""
    for i : 1 .. length (word)
	put word (i) : 2 ..
    end for
end fifteen
%Q16
body procedure sixteen
    var newword : string := ""
    for i : 1 .. length (word)
	put word (i) : 1 + i ..
    end for
end sixteen
%Q17
body procedure seventeen
    for i : 1 .. length (word)
	put word (i) : length (word) + 1 - i ..
    end for
end seventeen
%Q18
body procedure eighteen
    for i : 1 .. 40 - length (word) div 2
	put " " ..
    end for
    put word
end eighteen
%Q19
body procedure nineteen
    for i : 1 .. 40 - length (word)
	put " " ..
    end for
    for i : 1 .. length (word)
	put word (i), " " ..
    end for
end nineteen
%Q20
body procedure twenty
    for i : 1 .. 8
	put "     ", i, "    " ..
    end for
    put ""
    for i : 1 .. 8
	for k : 1 .. 9
	    put k ..
	end for
	put 0 ..
    end for
    put ""
    put word
end twenty
%Q21
body procedure twentyone
    for i : 1 .. 8
	put "     ", i, "    " ..
    end for
    put ""
    for i : 1 .. 8
	for k : 1 .. 9
	    put k ..
	end for
	put 0 ..
    end for
    put ""
    for i : 1 .. 40 - length (word) div 2
	put " " ..
    end for
    put word
end twentyone
%Q22
body procedure twentytwo
    for i : 1 .. 8
	put "     ", i, "    " ..
    end for
    put ""
    for i : 1 .. 8
	for k : 1 .. 9
	    put k ..
	end for
	put 0 ..
    end for
    put ""
    for i : 1 .. 40 - length (word)
	put " " ..
    end for
    for i : 1 .. length (word)
	put word (i), " " ..
    end for
end twentytwo
%Q23
body procedure twentythree
    var ruler : int := 8
    var input : string
    loop
	put "Enter ruler length, 1 - 8 " ..
	get input
	if strintok (input) then
	    if strint (input) > 0 and strint (input) < 9 then
		ruler := strint (input)
		exit
	    else
		put "Enter an integer from 1 - 8! "
	    end if
	else
	    put "Enter a VALID integer! "
	end if
    end loop
    for i : 1 .. ruler
	put "     ", i, "    " ..
    end for
    put ""
    for i : 1 .. ruler
	for k : 1 .. 9
	    put k ..
	end for
	put 0 ..
    end for
    put ""
    for i : 1 .. ruler * 5 - length (word) div 2
	put " " ..
    end for
    put word
end twentythree
%Q24
body procedure twentyfour
    var ruler : int := 8
    var input : string
    loop
	put "Enter ruler length, 1 - 8 " ..
	get input
	if strintok (input) then
	    if strint (input) > 0 and strint (input) < 9 then
		ruler := strint (input)
		exit
	    else
		put "Enter an integer from 1 - 8! "
	    end if
	else
	    put "Enter a VALID integer! "
	end if
    end loop
    for i : 1 .. ruler
	put "     ", i, "    " ..
    end for
    put ""
    for i : 1 .. ruler
	for k : 1 .. 9
	    put k ..
	end for
	put 0 ..
    end for
    put ""
    for i : 1 .. ruler * 5 - length (word)
	put " " ..
    end for
    for i : 1 .. length (word)
	put word (i), " " ..
    end for
end twentyfour

%Final Process
greet
put "Thank you for using Q24!"
put "Contact Frank Lai when you find a bug."

