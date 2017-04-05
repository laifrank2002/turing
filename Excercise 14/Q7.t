var doubles : int := 0
var oddsum : int := 0
for i : 1 .. 30
    var dice1, dice2 : int
    randint (dice1, 1, 6)
    randint (dice2, 1, 6)
    if dice1 = dice2 then
	doubles += 1
    end if
    if (dice1 + dice2) mod 2 = 1 then
	oddsum += 1
    end if
end for
put doubles
put oddsum
