%Set up the Array
var T : int
get T
var X : int
var m : int := 0
var steps : int := 0

%Log Function
function log (x : real, base : real) : real
    result ln (x) / ln (base)
end log
%Counting Down Algo that's better
for i : 1 .. T
    steps := 0
    get X
    m := X
    %Logic
    loop
	exit when m = 0
	if m mod 2 = 0 then
	    m := m div 2
	    steps += 1
	elsif m = 1 then
	    m -= 1
	    steps += 1
	else
	    m += 1
	    steps += 1
	end if
    end loop
    put steps
end for
%Poor Algo That's Commented Out
/*
for i : 1 .. T
    m := 0
    steps := 0
    get X
    %Init
    m += 1
    steps += 1
    %^2 until
    loop
	if m <= (X / 2) + 1 then
	    m *= 2
	    steps += 1
	else
	    exit
	end if
    end loop
    %Add
    loop
	if m < X then
	    m+=1
	    steps += 1
	else
	    exit
	end if
    end loop
    %Substract
    loop
	exit when m <= X
	if m > X then
	    m-= 1
	    steps += 1
	end if
    end loop
    %End count
    put steps
end for
*/
