%CCCHK '08 J1 - Best fish
%Their Stuffs
var CN : int
var NN : int
%Their Best Weights
var CB : int := 0
var NB : int := 0

%Casper's Best
get CN
for i : 1 .. CN
    var w : int
    var l : int
    get w
    get l
    if w*l > CB then
	CB := w*l
    end if
end for

%Natalie's Best
get NN
for i : 1 .. NN
    var w : int
    var l : int
    get w
    get l
    if w*l > NB then
	NB := w*l
    end if
end for

if NB = CB then
    put "Tie"
elsif NB > CB then
    put "Natalie"
else
    put "Casper"
end if
