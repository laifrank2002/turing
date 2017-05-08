var diceRolls : array 2 .. 12 of int := init(0,0,0,0,0,0,0,0,0,0,0)
var dice1, dice2 : int

for i : 1 .. 50
    randint(dice1,1,6)
    randint(dice2,1,6)
    diceRolls(dice1+dice2) += 1
end for
var input : int

loop
    put "Which rolls?"
    get input
    put diceRolls(input)
end loop
