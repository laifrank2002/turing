% Standard License Header

import GUI

% Constants

% Config
const WINDOW_X := 512
const WINDOW_Y := 512
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
const winID := Window.Open (winIDArgs)
const defFont := Font.New ("serif:36")
const smallFont := Font.New ("serif:8")

const FPS := 50

% Buttons / Textfields
var quitButton : int
% Images
var BackgroundPicID : int
% Statistics

% Other Variables
var elapse : int := Time.Elapsed


% Procedures
procedure initmainScreen

    BackgroundPicID := Pic.FileNew ("BoardColoreeetShade.bmp")

    % Main


    % Drawing
    Pic.Draw (BackgroundPicID, 0, 0, 0)
    Font.Draw ("Tic Tac Toe", 100, 400, defFont, red)
    % Board Tiles


end initmainScreen

% Frame Update
procedure frame
    Pic.Draw (BackgroundPicID, 0, 0, 0)
    drawfillbox (0, 0, 112, 14, black)
    Font.Draw (intstr (elapse) + " miliseconds", 0, 0, smallFont, white)
    
end frame

% Main Program
procedure mainScreen

    elapse := Time.Elapsed

    if elapse mod (1000 div FPS) = 0 then
	frame
    end if
    
    
end mainScreen

% Init
initmainScreen
loop
    mainScreen
end loop
% Graphical Loop
/*
 loop
 exit when GUI.ProcessEvent
 end loop
 */
