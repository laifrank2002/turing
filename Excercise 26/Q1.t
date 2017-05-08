% Standard License Heading
var x, y, button, buttonNum : int
var visible := false
procedure drawBox (mx, my : int)
    drawfillbox (mx - 10, my - 10, mx + 10, my + 10, 15)
end drawBox
loop
    Mouse.ButtonWait ("down", x, y, buttonNum, button)
    visible := not visible
    if visible then
	drawBox (x, y)

    else
	cls
    end if
end loop
