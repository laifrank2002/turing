import GUI
% constants
% config
const BACKGROUND_COLOUR := grey
const WINDOW_X := 300
const WINDOW_Y := 150
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int

% textfields
var inputTextField : int
var outputTextField : int

% procedures
procedure inputTextField_handle (input : string)
    var text : string := GUI.GetText (inputTextField)
    var newtext : string := ""
    for i : 1 .. length(text)
	if index("aeiouAEOIU",text(i)) = 0 then
	    newtext += text(i)
	end if
    end for
    GUI.SetText(outputTextField, newtext)
end inputTextField_handle

procedure outputTextField_handle (input : string)

end outputTextField_handle
% init procedure
procedure initScreen
    % config screen
    winID := Window.Open (winIDArgs)

    inputTextField := GUI.CreateTextFieldFull (10, 10, 100, "word", inputTextField_handle, GUI.INDENT, 0, 0)
    outputTextField := GUI.CreateTextFieldFull (190, 10, 100, "wrd", inputTextField_handle, GUI.INDENT, 0, 0)
end initScreen
% main program
initScreen

% Quitting
loop
    exit when GUI.ProcessEvent
end loop
% Actually Quits
Window.Close (winID)
