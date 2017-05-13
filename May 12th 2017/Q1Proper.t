const arrayUPPER := 10
var list : flexible array 1 .. arrayUPPER of int
var sortedlist : array 1 .. arrayUPPER of int
var unsorted : int := 1

var fileID : int

open : fileID, "data.txt", get

for i : 1 .. arrayUPPER
    get : fileID, list (i)
end for

sortedlist (1) := list (1)

var token : boolean := false
for i : 1 .. arrayUPPER
    % Declarations
    var where : int
    % Checking
    for k : 1 .. i - 1
	if list (i) < sortedlist (k) then
	    token := true
	    where := k
	    exit
	end if
    end for
    % If it's more, move everything upwards
    if token then
	/* reverse this
	 for s : where .. i - 1
	 sortedlist (s + 1) := sortedlist (s)
	 end for
	 */
	for decreasing s : i - 1 .. where
	    sortedlist(s+1) := sortedlist (s)
	end for
	token := false
	% Add onto
	sortedlist (where) := list (i)
    else
	% Otherwise, tack onto end; i should be the end
	sortedlist (i) := list (i)
    end if

end for

% Output
for i : 1 .. arrayUPPER
    put sortedlist (i)
end for
