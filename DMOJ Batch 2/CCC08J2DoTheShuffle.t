var place : char
var playlist : array 1 .. 5 of char
playlist (1) := "A"
playlist (2) := "B"
playlist (3) := "C"
playlist (4) := "D"
playlist (5) := "E"
var button : int
var number : int

procedure button1
    for i : 1 .. number
	place := playlist (1)
	playlist (1) := playlist (2)
	playlist (2) := playlist (3)
	playlist (3) := playlist (4)
	playlist (4) := playlist (5)
	playlist (5) := place
    end for
end button1

procedure button2
    for i : 1 .. number
	place := playlist (5)
	playlist (5) := playlist (4)
	playlist (4) := playlist (3)
	playlist (3) := playlist (2)
	playlist (2) := playlist (1)
	playlist (1) := place
    end for
end button2

procedure button3
    for i : 1 .. number
	place := playlist (1)
	playlist (1) := playlist (2)
	playlist (2) := place
    end for
end button3
/*
 procedure button4
 for i : 1 .. number
 exit
 end for
 end button4
 */
loop
    get button
    get number
    if button = 1 then
	button1
    elsif button = 2 then
	button2
    elsif button = 3 then
	button3
    elsif button = 4 then
	exit
    end if
end loop

for i : 1 .. 5 
    if i < 5 then
	put playlist(i), " "..
    else
	put playlist(i)
    end if
end for
