/*
 Made by LAI Enterprised Industrial Centre
 Tic Tac Toe
 */
%Holdings
var position : array 1 .. 3, 1 .. 3 of int
%X, Y User Input Coordinates
var posX : int
var posY : int
%Who's Playing
var player : int := 1
%Who Won
var won : int := 2

%Input Department
%Init
for y : 1 .. 3
    for x : 1 .. 3
	position (x,y) := -5
    end for
end for
%Turn for Player 1
procedure crossTurn
    put "Crosses : Enter X,Y value"
    get posX, posY
    position (posX,posY) := 1
end crossTurn
%Turn for Player 2
procedure noughtTurn
    put "Noughts : Enter X,Y value"
    get posX, posY
    position (posX,posY) := 0
end noughtTurn
%Calculations Department
%Horizontals
procedure check
    for y : 1 .. 3
	var sum : int := 0

	for x : 1 .. 3
	    sum += (position (x, y))
	end for

	if sum = 0 then
	    put "Noughts Won"
	elsif sum = 3 then
	    put "Crosses Won"
	end if
    end for
    %Verticals
    for x : 1 .. 3
	var sum : int := 0

	for y : 1 .. 3
	    sum += (position (x, y))
	end for

	if sum = 0 then
	    put "Noughts Won"
	elsif sum = 3 then
	    put "Crosses Won"
	end if
    end for
    %Diagonals
    for k : 1 .. 1
	var sum : int := 0
	for i : 1 .. 3
	    sum += position (i, i)
	end for

	if sum = 0 then
	    put "Noughts Won"
	elsif sum = 3 then
	    put "Crosses Won"
	end if

	for i : 1 .. 3
	    var s : int := 4 - i
	    sum += position (i, s)
	end for
    end for
end check
%Graphics Unit
procedure graphics
    for y : 1 .. 3
	for x : 1 .. 3
	    put "|" ..
	    if position (x, y) = 1 then
		put "X" ..
	    elsif position (x, y) = 0 then
		put "O" ..
	    else
		put " " ..
	    end if
	end for
	put "|"
    end for
end graphics
%Meat
loop
    if player = 1 then
	crossTurn
	player := 2
    else
	noughtTurn
	player := 1
    end if
    check
    graphics
    exit when won not= 2
end loop
