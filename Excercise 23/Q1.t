import GUI

% Constants
const INCHTOCM := 2.54
% Config
const BACKGROUND_COLOUR := grey
const WINDOW_X := 300
const WINDOW_Y := 150
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int
% Numbers
var cm, inch : real
% Textfield ID
var cmTextField : int
var inchTextField : int
% Textfield Label ID
var cmTextFieldLabel : int
var inchTextFieldLabel : int
% Button ID
var quitButton : int
var cminchButton : int
var inchcmButton : int

% Procedures

% Button

procedure cminchButton_handle
    var cmText := GUI.GetText(cmTextField)
    if strrealok(cmText) then
	GUI.SetText(inchTextField, realstr(strreal(cmText) / 2.54,2))
    end if
end cminchButton_handle

procedure inchcmButton_handle
    var inchText := GUI.GetText(inchTextField)
    if strrealok(inchText) then
	GUI.SetText(cmTextField, realstr(strreal(inchText) * 2.54,2))
    end if
end inchcmButton_handle
% Textfield

procedure cmTextField_handle (input : string)


end cmTextField_handle

procedure inchTextField_handle (input : string)


end inchTextField_handle



procedure initScreen

    % Configure the run window.

    winID := Window.Open (winIDArgs)
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)
    % Buttons
    cminchButton := GUI.CreateButton (75, 95, 50, "Centimeters to Inch", cminchButton_handle)
    inchcmButton := GUI.CreateButton (75, 65, 50, "Inch to Centimeters", inchcmButton_handle)
    quitButton := GUI.CreateButton (125, 15, 50, "Exit", GUI.Quit)
    % Textfields
    cmTextField := GUI.CreateTextFieldFull (50, 20, 50, "0.00",
	cmTextField_handle, GUI.INDENT, 0, 0)
    inchTextField := GUI.CreateTextFieldFull (200, 20, 50, "0.00",
	inchTextField_handle, GUI.INDENT, 0, 0)
    % Textfield Labels
    cmTextFieldLabel := GUI.CreateLabelFull (80, GUI.GetHeight (cmTextField) + 20, "CM", 0, 0,
	GUI.RIGHT, 0)
    inchTextFieldLabel := GUI.CreateLabelFull (240, GUI.GetHeight (inchTextField) + 20, "INCH", 0, 0,
	GUI.RIGHT, 0)

end initScreen

initScreen

% Quitting
loop
    exit when GUI.ProcessEvent
end loop
% Actually Quits
Window.Close (winID)
