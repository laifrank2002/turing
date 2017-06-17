import GUI


procedure ScrollBarMoved (value : int)

end ScrollBarMoved

function colourSelector () : int
    const C_WINDOW_X := 500
    const C_WINDOW_Y := 300
    const C_winIDArgs := "position:300;300,graphics:" + intstr (C_WINDOW_X) + ";" + intstr (C_WINDOW_Y)
    const C_winID := Window.Open (C_winIDArgs)

    var newcolour : int
    var r, g, b : real

    var scrollBar : int
    scrollBar := GUI.CreateVerticalScrollBar (10, 10, 180,
	50, 150, 50, ScrollBarMoved)

    r := GUI.GetSliderValue (scrollBar)
    g := 0.5
    b := 0.5

    loop
	exit when GUI.ProcessEvent
    end loop
    newcolour := RGB.AddColor (r, g, b)
    
    result newcolour
end colourSelector


var newColour := colourSelector ()

GUI.SetBackgroundColour (newColour)
