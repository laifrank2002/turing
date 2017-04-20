import GUI
var drawCircle : int
var quitButton : int

procedure drawCircle_handle 
    var x,y, Radius, Color : int
    randint(x,1,maxx)
    randint(y,1,maxy)
    randint(Radius,1,100)
    randint(Color,1,15)
    Draw.FillOval (x, y, Radius, Radius, Color)
end drawCircle_handle

drawCircle := GUI.CreateButton(100,100,50,"Draw",drawCircle_handle)
loop
    exit when GUI.ProcessEvent
end loop
