% Stantard Disclaimer
import GUI

% Configurations
const BACKGROUND_COLOUR := gray
const WINDOW_X := 200
const WINDOW_Y := 400
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int
var font := Font.New ("serif:12")

var canvas : int
var canvas_label : int
var textBox : int
var inputTextField : int
var outputFileID : int
% Center
const CENTER := 75
const CANVAS_SHIFT := 200

var filePos : int := 0
% Forward procedures

% This procedure is needed as an argument to CreateCanvasFull.
procedure DoNothing (mx, my : int)
end DoNothing

procedure inputTextField_handle (input : string)
    put : outputFileID, input
end inputTextField_handle



% main screen
procedure mainScreen

    % config the run window
    winID := Window.Open (winIDArgs)
    Window.Set (winID, "title: Logo")
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)

    canvas_label := GUI.CreateLabel (80, CANVAS_SHIFT + 182, "Logo")
    canvas := GUI.CreateCanvasFull (20, CANVAS_SHIFT + 20, 160, 160, GUI.INDENT,
	DoNothing, DoNothing, DoNothing)
    %textBox := GUI.CreateTextBoxFull (10, 30, maxx - 10, maxy - CANVAS_SHIFT + 5,
    %    GUI.INDENT, 0)
    inputTextField := GUI.CreateTextField (10, 0, maxx - 10, "comment", inputTextField_handle)
    open : outputFileID, "comments.txt", get
    loop
	exit when eof (outputFileID)
	var temp : string
	get : outputFileID, temp
	filePos += 1
    end loop
    close : outputFileID
    open : outputFileID, "comments.txt", put, seek
end mainScreen

procedure draw
    const shiftBox2 := 50
    GUI.DrawFillBox (canvas, CENTER, CENTER + 25, CENTER - 55, CENTER - 25, 40)
    GUI.DrawFillBox (canvas, shiftBox2 + CENTER, shiftBox2 + CENTER + 25, shiftBox2 + CENTER - 55, shiftBox2 + CENTER - 25, 44)
    GUI.DrawFillBox (canvas, shiftBox2 + CENTER, CENTER + 25, shiftBox2 + CENTER - 55, CENTER - 25, 52)
    GUI.DrawFillBox (canvas, CENTER, shiftBox2 + CENTER + 25, CENTER - 55,shiftBox2 +  CENTER - 25, 10)
    GUI.DrawFillOval (canvas, CENTER, CENTER + 5, 40, 20, 54)
    GUI.DrawFillOval (canvas, CENTER, CENTER + 5, 20, 10, white)
    GUI.DrawFillOval (canvas, CENTER, CENTER + 25, 15, 30, brightblue)
    GUI.DrawFillOval (canvas, CENTER, CENTER + 25, 5, 10, white)

end draw


% main program
mainScreen
draw
loop
    exit when GUI.ProcessEvent
end loop
