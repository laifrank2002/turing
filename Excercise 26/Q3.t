% Standard License Heading
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
    if visible then
	drawBox (x, y, colourNumber)
    else
	drawAlt (x, y)
    end if
end loop
