import GUI

% Config
const BACKGROUND_COLOUR := grey
const WINDOW_X := 150
const WINDOW_Y := 85
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int

var textFieldID : int
var quitButton : int
procedure textField_handle (input : string)
    var currentInt : int
    var Userinput : string
    Userinput := GUI.GetText(textFieldID)
    if strintok(Userinput) then
	currentInt := strint(Userinput)
	currentInt += 1
	GUI.SetText(textFieldID,intstr(currentInt))
    end if
end textField_handle

procedure initScreen
    winID := Window.Open (winIDArgs)
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)

    quitButton := GUI.CreateButton (50, 15, 50, "Exit", GUI.Quit)
    textFieldID := GUI.CreateTextField (25,50,100, "0", textField_handle)
end initScreen

initScreen

% Quitting
loop
    exit when GUI.ProcessEvent
end loop
% Actually Quits
Window.Close (winID)
