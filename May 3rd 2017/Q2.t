% v 0.03
import GUI
% config
const BACKGROUND_COLOUR := 15
const WINDOW_X := 350
const WINDOW_Y := 150
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int := Window.Open (winIDArgs)
var font := Font.New ("serif:12")
var hiddenInt : int := 0
var A, B, C : int
var quitButton : int
procedure randomHide (hidden : int)

    var random : int
    randint (random, 1, 3)
    case random of
	label 1 :
	    GUI.Hide (A)
	    if hiddenInt = 1 then
		GUI.Hide (B)
	    end if
	    hiddenInt := 1
	label 2 :
	    GUI.Hide (B)
	    if hiddenInt = 2 then
		GUI.Hide (C)
	    end if
	    hiddenInt := 2
	label 3 :
	    GUI.Hide (C)
	    if hiddenInt = 3 then
		GUI.Hide (A)
	    end if
	    hiddenInt := 3
    end case

end randomHide

procedure handleButton
    randomHide (hiddenInt)
end handleButton

A := GUI.CreateButton (10, 10, 10, "Click Me!", handleButton)
B := GUI.CreateButton (110, 10, 10, "Click Me!", handleButton)
C := GUI.CreateButton (210, 10, 10, "Click Me!", handleButton)
quitButton := GUI.CreateButton (300, 10, 40, "Quit", GUI.Quit)

% Loopy
loop
    exit when GUI.ProcessEvent
end loop
Window.Close (winID)
