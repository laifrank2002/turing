var input : string
var num : int
loop
    put "Enter a number"
    get input
    if strintok(input) then
	num:= strint(input)
	exit
    else
	put "Systems Error!"
    end if
end loop

for i : 1 .. num
    if num mod i = 0 then
	put i
    end if
end for
