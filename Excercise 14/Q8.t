var doubles : int := 0
var oddsum : int := 0
var count : int := 0
loop
    count += 1
    var dice1, dice2 : int
    randint (dice1, 1, 6)
    randint (dice2, 1, 6)
    if dice1 = dice2 then
	doubles += 1
    end if
    if (dice1 + dice2) mod 2 = 1 then
	oddsum += 1
    end if
    exit when dice1 + dice2 = 7
end loop
put doubles
put oddsum
put count
