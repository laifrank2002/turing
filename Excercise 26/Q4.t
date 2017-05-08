% Standard License Heading
var square_x, square_y : int
var x, y, button, buttonNum : int
var colourNumber : int := 15
var visible := false
procedure drawBox (mx, my, colourNum : int)
    drawfillbox (mx - 10, my - 10, mx + 10, my + 10, colourNum)
end drawBox
procedure drawAlt (mx, my : int)
    drawfillbox (mx - 20, my - 25, mx + 15, my + 10, 15)
end drawAlt
loop
    Mouse.ButtonWait ("down", x, y, buttonNum, button)
    visible := not visible
    if not visible then
	if x > square_x - 10 and x < square_x + 10 and y > square_y - 10 and y < square_y + 10 then
	    randint (colourNumber, 0, 255)
	    drawBox (square_x, square_y, colourNumber)
	end if
    end if
    if visible then

	drawBox (x, y, colourNumber)
	square_x := x
	square_y := y

    else
	if x < square_x - 10 or x > square_x + 10 or y < square_y - 10 or y > square_y + 10 then
	    drawAlt (x, y)
	end if
    end if
end loop
