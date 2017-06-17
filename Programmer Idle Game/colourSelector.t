% Colour Selector 800x500
const width := 50
const height := 25
const nFont := Font.New("serif:12")
var x : int := 0
var y : int := maxy

for i : 0 .. 255
    Draw.FillBox(x,y,x+width,y-height,i)
    Font.Draw(intstr(i),x,y-23,nFont,black)
    x += width
    if x >= maxx then
	x := 0
	y -= height
    end if
end for


