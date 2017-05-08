import GUI

var echo : string
var fileID : int
var filePos : int := 0
var textFieldID : int
var quitButton : int

% Config
const BACKGROUND_COLOUR := 15
const WINDOW_X := 350
const WINDOW_Y := 150
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int
var font := Font.New ("serif:12")
% Create
procedure openFileGet (fileName : string)
    cls
    GUI.Refresh
    filePos := 0
    open : fileID, fileName, get
    if fileID > 0 then
	loop
	    exit when eof(fileID)
	    filePos += 1
	    get : fileID, echo :*
	    put echo
	end loop
    else
	put "ERROR! NOT FOUND!"
    end if
    close : fileID
end openFileGet

procedure textField_handle (input : string)
    var fileName : string
    fileName := GUI.GetText (textFieldID)
    openFileGet (fileName)
end textField_handle

winID := Window.Open (winIDArgs)
textFieldID := GUI.CreateTextField (100, 15, 50, "file.txt", textField_handle)
quitButton := GUI.CreateButton (250, 15, 0, "Quit", GUI.Quit)

% Loopy
loop
    exit when GUI.ProcessEvent
end loop
Window.Close (winID)
