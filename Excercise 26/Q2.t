% Standard License Heading
var x, y, button, buttonNum : int
var colourNumber : int := 15
var visible := false
procedure drawBox (mx, my, colourNum : int)
    drawfillbox (mx - 10, my - 10, mx + 10, my + 10, colourNum)
end drawBox
loop
    Mouse.ButtonWait ("down", x, y, buttonNum, button)
    visible := not visible
    if visible then
	drawBox (x, y, colourNumber)
    else
	randint(colourNumber,0,255)
	drawBox (x, y, colourNumber)
    end if
end loop
