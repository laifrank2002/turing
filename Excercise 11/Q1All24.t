%Q1, all 24 Substrings
var word : string
var option : int
get word
get option

%Universal Functions


%Q1
procedure one
    for i : 1 .. length(word)
	put word(i)
    end for
end one
%Q2
procedure two
    for decreasing i : length(word) .. 1
	put word(i)
    end for
end two
%Q3
procedure three
    var newword : string := ""
    newword += word(*)
    newword += word(2..*-1)
    newword += word(1)
    put newword
end three
%Final Processing
case option of
    label 1 : one
    label 2 : two
    label 3 : three
    label :
end case
