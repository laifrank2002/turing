var good : int := 0
var input : string
var mark : int
for i : 1 .. 10
    loop
	put"Enter a mark"
	get input
	if strintok(input) then
	    mark:=strint(input)
	    exit
	end if
    end loop
    if mark >= 70 then
	good += 1
    end if
end for
put "There were ",good," 'good' marks in the class."
