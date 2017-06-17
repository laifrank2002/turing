% Micronoft Paint 1850
% Standard License Heading
% Version 0.003
% Imports
import GUI
% List of standard resolutions
% 768 x 1024
% Configuaration
const BACKGROUND_COLOUR := 15
const MAIN_WINDOW_X := 1024
const MAIN_WINDOW_Y := 700
const winIDArgs := "position:300;300,graphics:" + intstr (MAIN_WINDOW_X) + ";" + intstr (MAIN_WINDOW_Y)
const winID := Window.Open (winIDArgs)

const C_WINDOW_X := 500
const C_WINDOW_Y := 300
const C_winIDArgs := "position:300;300,graphics:" + intstr (C_WINDOW_X) + ";" + intstr (C_WINDOW_Y)
const C_winID := Window.Open (C_winIDArgs)

const CANVAS_HEIGHT := MAIN_WINDOW_X - ((MAIN_WINDOW_X div 10) * 2) + MAIN_WINDOW_X div 25
const CANVAS_WIDTH := MAIN_WINDOW_Y - ((MAIN_WINDOW_Y div 10) * 2) + MAIN_WINDOW_Y div 25
% Variables
var oldx, oldy : int
var canvas : int
var picID : int
var colour_change : int := 9
var namefile : string

var quitButton : int
var saveButton : int
var nameTextField : int
var nameTextFieldLabel : int
var developernameTextLabel : int
% Line Thickness
var thickline1Button, thickline3Button, thickline5Button, thickline7Button : int
var titleTextField : int
var clearButton : int
% Colour Buttons
var blueButton : int
var greenButton : int
var redButton : int
var yellowButton : int
var blackButton : int
var orangeButton : int
var pinkButton : int
var brownButton : int
var grayButton : int
var lightblueButton : int
var purpleButton : int
var darkblueButton : int
var darkgreenButton : int
var bluePic, redPic, greenPic, yellowPic, blackPic, orangePic, pinkPic, brownPic, grayPic, lightbluePic, purplePic, darkbluePic, darkgreenPic : int
var thickline1, thickline3, thickline5, thickline7 : int
var fonttype : int
var fonttype2 : int
var setting := 1

% Procedures
procedure bluePressed
    colour_change := 9
end bluePressed
procedure redPressed
    colour_change := 12
end redPressed
procedure greenPressed
    colour_change := 47
end greenPressed
procedure blackPressed
    colour_change := 255
end blackPressed
procedure yellowPressed
    colour_change := 14
end yellowPressed
procedure orangePressed
    colour_change := 43
end orangePressed
procedure pinkPressed
    colour_change := 13
end pinkPressed
procedure brownPressed
    colour_change := 4
end brownPressed
procedure grayPressed
    colour_change := 27
end grayPressed
procedure lightbluePressed
    colour_change := 11
end lightbluePressed
procedure purplePressed
    colour_change := 35
end purplePressed
procedure darkbluePressed
    colour_change := 104
end darkbluePressed
procedure darkgreenPressed
    colour_change := 120
end darkgreenPressed

% Standard Canvassing
procedure MouseDown (mx, my : int)
    oldx := mx
    oldy := my
end MouseDown
procedure MouseDrag (mx, my : int)
    for i : -1 * (setting div 2) .. setting div 2
	GUI.DrawLine (canvas, oldx + i, oldy + i, mx + i, my + i, colour_change)
    end for
    oldx := mx
    oldy := my
end MouseDrag
procedure doNothing (mx, my : int)

end doNothing
% Export Picture
procedure exportPic
    GUI.Show (nameTextField)
    GUI.Show (nameTextFieldLabel)
end exportPic
% Clears the Canvas
procedure clearProc
    Draw.FillBox (102, 70, 102 + CANVAS_HEIGHT, 70 + CANVAS_WIDTH, white)
end clearProc

% Thick Lines
procedure thickline1Pressed
    setting := 1
end thickline1Pressed

procedure thickline3Pressed
    setting := 3
end thickline3Pressed

procedure thickline5Pressed
    setting := 5
end thickline5Pressed

procedure thickline7Pressed
    setting := 7
end thickline7Pressed

% Exports Picture
procedure namingFile (fieldContents : string)
    namefile := fieldContents + ".BMP"
    picID := Pic.New (MAIN_WINDOW_X div 10, MAIN_WINDOW_Y div 10, CANVAS_HEIGHT + (MAIN_WINDOW_Y div 10), CANVAS_WIDTH + (MAIN_WINDOW_X div 10))
    Pic.Save (picID, namefile)
    GUI.SetText (nameTextField, "")
    GUI.SetLabel (nameTextFieldLabel, "Saved!")
    Time.Delay (1000)
    GUI.Hide (nameTextField)
    GUI.Hide (nameTextFieldLabel)
    GUI.SetLabel (nameTextFieldLabel, "Enter Name for Pic")
    Draw.FillBox (300, 35 + GUI.GetHeight (nameTextField), 400, 65, 15)
end namingFile

% Init
Window.Set (winID, "title: Micronoft Paint 1850")
Window.Hide(C_winID)
Window.SetActive(winID)

canvas := GUI.CreateCanvasFull (MAIN_WINDOW_X div 10, MAIN_WINDOW_Y div 10,
    CANVAS_HEIGHT, CANVAS_WIDTH,
    GUI.INDENT, MouseDown, MouseDrag, doNothing)

Draw.FillBox (35, maxy - 100, 55, maxy - 80, 9)
Draw.FillBox (35, maxy - 140, 55, maxy - 120, 12)
Draw.FillBox (35, maxy - 180, 55, maxy - 160, 47)
Draw.FillBox (35, maxy - 220, 55, maxy - 200, 255)
Draw.FillBox (35, maxy - 260, 55, maxy - 240, 14)
Draw.FillBox (35, maxy - 300, 55, maxy - 280, 43)
Draw.FillBox (35, maxy - 340, 55, maxy - 320, 13)
Draw.FillBox (35, maxy - 380, 55, maxy - 360, 4)
Draw.FillBox (35, maxy - 420, 55, maxy - 400, 27)
Draw.FillBox (35, maxy - 460, 55, maxy - 440, 11)
Draw.FillBox (35, maxy - 500, 55, maxy - 480, 35)
Draw.FillBox (35, maxy - 540, 55, maxy - 520, 104)
Draw.FillBox (35, maxy - 580, 55, maxy - 560, 120)

bluePic := Pic.New (35, maxy - 100, 55, maxy - 80)
redPic := Pic.New (35, maxy - 140, 55, maxy - 120)
greenPic := Pic.New (35, maxy - 180, 55, maxy - 160)
blackPic := Pic.New (35, maxy - 220, 55, maxy - 200)
yellowPic := Pic.New (35, maxy - 260, 55, maxy - 240)
orangePic := Pic.New (35, maxy - 300, 55, maxy - 280)
pinkPic := Pic.New (35, maxy - 340, 55, maxy - 320)
brownPic := Pic.New (35, maxy - 380, 55, maxy - 360)
grayPic := Pic.New (35, maxy - 420, 55, maxy - 400)
lightbluePic := Pic.New (35, maxy - 460, 55, maxy - 440)
purplePic := Pic.New (35, maxy - 500, 55, maxy - 480)
darkbluePic := Pic.New (35, maxy - 540, 55, maxy - 520)
darkgreenPic := Pic.New (35, maxy - 580, 55, maxy - 560)

Draw.ThickLine (CANVAS_HEIGHT + 12, 504, CANVAS_HEIGHT + 30, 518, 1, black)
Draw.ThickLine (CANVAS_HEIGHT + 12, 486, CANVAS_HEIGHT + 30, 500, 3, black)
Draw.ThickLine (CANVAS_HEIGHT + 12, 469, CANVAS_HEIGHT + 30, 482, 5, black)
Draw.ThickLine (CANVAS_HEIGHT + 12, 450, CANVAS_HEIGHT + 30, 463, 7, black)

thickline1 := Pic.New (CANVAS_HEIGHT + 12, 502, CANVAS_HEIGHT + 30, 520)
thickline3 := Pic.New (CANVAS_HEIGHT + 12, 484, CANVAS_HEIGHT + 30, 502)
thickline5 := Pic.New (CANVAS_HEIGHT + 12, 466, CANVAS_HEIGHT + 30, 484)
thickline7 := Pic.New (CANVAS_HEIGHT + 12, 448, CANVAS_HEIGHT + 30, 466)

fonttype := Font.New ("Arial:20:bold")
fonttype2 := Font.New ("Helvetica:10")

Draw.Cls
GUI.Refresh
GUI.SetBackgroundColour (BACKGROUND_COLOUR)
% Misc
quitButton := GUI.CreateButton (MAIN_WINDOW_X div 20, MAIN_WINDOW_Y div 20, 0, "Exit Paint", GUI.Quit)
saveButton := GUI.CreateButton (MAIN_WINDOW_X div 20 + 100, MAIN_WINDOW_Y div 20, 0, "Save Picture", exportPic)
titleTextField := GUI.CreateLabelFull (0, maxy - 40, "Welcome to Micronoft Paint!", maxx, maxy, GUI.CENTER, fonttype)
nameTextField := GUI.CreateTextField (300, 35, 100, "", namingFile)
nameTextFieldLabel := GUI.CreateLabel (300, 33 + GUI.GetHeight (nameTextField), "Enter Name for Pic")
clearButton := GUI.CreateButton (500, 35, 80, "Clear", clearProc)
developernameTextLabel := GUI.CreateLabelFull (10, maxy - 20, "Made By: Frank and Akshay", maxx, maxy, GUI.LEFT, fonttype2)

% Colours
blueButton := GUI.CreatePictureRadioButton (30, maxy - 90, bluePic, 0, bluePressed)
redButton := GUI.CreatePictureRadioButton (-1, -1, redPic, blueButton, redPressed)
greenButton := GUI.CreatePictureRadioButton (-1, -1, greenPic, redButton, greenPressed)
blackButton := GUI.CreatePictureRadioButton (-1, -1, blackPic, greenButton, blackPressed)
yellowButton := GUI.CreatePictureRadioButton (-1, -1, yellowPic, blackButton, yellowPressed)
orangeButton := GUI.CreatePictureRadioButton (-1, -1, orangePic, yellowButton, orangePressed)
pinkButton := GUI.CreatePictureRadioButton (-1, -1, pinkPic, orangeButton, pinkPressed)
brownButton := GUI.CreatePictureRadioButton (-1, -1, brownPic, pinkButton, brownPressed)
grayButton := GUI.CreatePictureRadioButton (-1, -1, grayPic, brownButton, grayPressed)
lightblueButton := GUI.CreatePictureRadioButton (-1, -1, lightbluePic, grayButton, lightbluePressed)
purpleButton := GUI.CreatePictureRadioButton (-1, -1, purplePic, lightblueButton, purplePressed)
darkblueButton := GUI.CreatePictureRadioButton (-1, -1, darkbluePic, purpleButton, darkbluePressed)
darkgreenButton := GUI.CreatePictureRadioButton (-1, -1, darkgreenPic, darkblueButton, darkgreenPressed)

% Brush Size
thickline1Button := GUI.CreatePictureRadioButton (CANVAS_HEIGHT + 115, 500, thickline1, 0, thickline1Pressed)
thickline3Button := GUI.CreatePictureRadioButton (-1, -1, thickline3, thickline1Button, thickline3Pressed)
thickline5Button := GUI.CreatePictureRadioButton (-1, -1, thickline5, thickline3Button, thickline5Pressed)
thickline7Button := GUI.CreatePictureRadioButton (-1, -1, thickline7, thickline5Button, thickline7Pressed)

% Polish
GUI.Refresh
GUI.Hide (nameTextField)
GUI.Hide (nameTextFieldLabel)
Draw.FillBox (300, 35 + GUI.GetHeight (nameTextField), 400, 65, 15)

loop
    exit when GUI.ProcessEvent
end loop
Window.Close (winID)
