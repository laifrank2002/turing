% Programmer Idle

% preprogram
import GUI, Save
% variables


% config
const WINDOW_X := 1024
const WINDOW_Y := 768
const WINDOW_TITLE := "Programmer Idle"
const winIDArgs := "position:0;0,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y) + ",title:" + WINDOW_TITLE
const winID := Window.Open (winIDArgs)

% fonts
const headerFont := Font.New ("serif:24")
const normalFont := Font.New ("serif:12")

% colour config
const UIColour := 53

% buttons
var mainIncrementButton : int
var quitButton : int
var buyButton : int

% Save System
var saveTextField : int
var saveButton : int
var loadTextField : int
var loadButton : int
var dataLine : int := 0
var data : flexible array 1 .. dataLine of string
% this is the main one in the game
var linesOfCode : real := 0
var codePerSecond : real := 0
% misc bools
var QUIT : boolean := false
% buildings

% universal procedures / functions
% handles frames (should go first)
View.Set ("offscreenonly")
procedure frame
    cls
    % Pretty Boxes
    Draw.FillBox (0, 0, 200, maxy, UIColour)
    % Draws all the UI Elements
    GUI.Refresh
    Font.Draw (realstr (linesOfCode, 0) + " Lines of Code", maxx div 2, maxy - 400, headerFont, black)
    Font.Draw ("+ " + realstr (codePerSecond, 0) + " Cps", maxx div 2 + length(realstr (linesOfCode, 0) + " Lines of Code") * 16 + 25, maxy - 400, headerFont, black)
    View.Update
end frame

process update
    loop
	delay (100)
	linesOfCode += (codePerSecond / 10)
	frame
	if QUIT then
	    Window.Close (winID)
	    exit
	end if
    end loop
end update
% save
procedure save
    for i : 1 .. dataLine
	Save.Out (i, data (i), "save.txt")
    end for
end save
% load
procedure load
    for i : 1 .. dataLine
	data (i) := Save.In (i, "save.txt")
    end for
end load
% button_handling (go last)
procedure mainIncrementButton_handle
    linesOfCode += 1
    % updater, goes last
    frame
end mainIncrementButton_handle

procedure quitButton_handle
    View.Set ("nooffscreenonly")
    GUI.Quit
    QUIT := true
end quitButton_handle

procedure buyButton_handle
    if linesOfCode >= 10 then
	linesOfCode -= 10
	codePerSecond += 1
	frame
    end if
end buyButton_handle

procedure saveButton_handle
    dataLine := 2
    new data, dataLine
    data (1) := realstr (linesOfCode, 0)
    data (2) := realstr (codePerSecond, 0)
    save
end saveButton_handle

procedure loadButton_handle
    dataLine := 2
    new data, dataLine
    load
    linesOfCode := strreal (data (1))
    codePerSecond := strreal (data (2))
end loadButton_handle
% init (goes very last)
procedure initUI
    mainIncrementButton := GUI.CreateButton (maxx div 2, maxy - 500, 0,
	"Code!", mainIncrementButton_handle)
    quitButton := GUI.CreateButton (maxx div 2, maxy - 550, 0,
	"QUIT", quitButton_handle)
    buyButton := GUI.CreateButton (250, maxy - 550, 0,
	"BUY (Costs 10 Lines)", buyButton_handle)
    saveButton := GUI.CreateButton (250, maxy - 600, 0,
	"Save", saveButton_handle)
    loadButton := GUI.CreateButton (350, maxy - 600, 0,
	"Load", loadButton_handle)
    % updater, goes last
    frame
    
end initUI

initUI

fork update
loop
    exit when GUI.ProcessEvent
end loop
