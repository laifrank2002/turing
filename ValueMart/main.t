% Imports
import GUI
% Declarations
const BACKGROUND_COLOUR := grey
const DATA_FILE := "data.txt"
const RECEIPT := "receipt.txt"
const WINDOW_X := 1024
const WINDOW_Y := 576
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
const PST := 0.08
const GST := 0.05
const TST := 1.13
var winID : int
var mainIconPic : int := Pic.FileNew ("basket.bmp")
var fileName : string := "data.txt"
var inputTotalLines : int
var inputFile : int
var inputLine : string

var name : string
var numberOfGrocery : int
var outputFile : int

var cost : real := 0.00
var total : real := 0.00
% Buttons
var quitButton : int

var itemCostTextField : int
% Error Proofed Input
open : inputFile, fileName, get

get : inputFile, inputLine
inputTotalLines := strint (inputLine)

get : inputFile, name : *
get : inputFile, numberOfGrocery

forward procedure update
forward procedure initializeInterface

% Handle Input
procedure handleInput (text : string)

    if numberOfGrocery >= 1 then
	var input : string
	input := GUI.GetText (itemCostTextField)
	if strrealok (input) then
	    cost := strreal (input)
	    total += cost * TST
	    numberOfGrocery -= 1
	    play ("A")
	    % Output
	    
	    put : outputFile, cost * TST
	end if
    end if
    
    if numberOfGrocery = 0 then
	put : outputFile, total
    end if
    update
end handleInput
% Initizlization
body procedure initializeInterface

    % Declartions
    var InnerBorderWidth := 35
    var OuterBorderWidth := 1
    var font := Font.New ("serif:12")

    % Configure the run window.
    winID := Window.Open (winIDArgs)
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)

    % Text
    Font.Draw ("Grocery Manager 2001", 400, 380, font, black)
    Font.Draw ("v 0. 9, copr Francis V. Contact franklai2002@gmail.com. For use in Ontario Only!", 50, 10, font, black)
    Font.Draw ("Hello " + name + "!" + " Welcome to Grocery Manager 2001! Enter your item price below! ", 200, 360, font, black)
    Font.Draw ("There are " + intstr (numberOfGrocery) + " items left!", 400, 300, font, black)
    % Receipt
    Font.Draw ("Receipt - GM2001", 400, 270, font, black)
    Font.Draw ("PST", 400, 240, font, black)
    Font.Draw ("GST", 400, 210, font, black)
    Font.Draw ("Subtotal", 400, 180, font, black)
    Font.Draw ("Total", 400, 150, font, black)

    Font.Draw (realstr (cost * PST, 2), 600, 240, font, black)
    Font.Draw (realstr (cost * GST, 2), 600, 210, font, black)
    Font.Draw (realstr (cost * TST, 2), 600, 180, font, black)
    Font.Draw (realstr (total, 2), 600, 150, font, black)
    % Decorations
    Draw.Box (InnerBorderWidth, InnerBorderWidth, WINDOW_X - InnerBorderWidth, WINDOW_Y - InnerBorderWidth, black)
    Draw.Box (OuterBorderWidth, OuterBorderWidth, WINDOW_X - OuterBorderWidth, WINDOW_Y - OuterBorderWidth, black)

    Pic.Draw (mainIconPic, 430, 400, 0)
    % Buttons
    quitButton := GUI.CreateButton (450, 45, 100, "Exit", GUI.Quit)

    itemCostTextField := GUI.CreateTextFieldFull (380, 330, 200, "0.00",
	handleInput, GUI.INDENT, 0, 0)
    var itemCostLabel := GUI.CreateLabelFull (375, 330, "Cost", 0, 0,
	GUI.RIGHT, 0)
	
    % Post Processor
    open : outputFile, RECEIPT, put
    put : outputFile, "RECEIPT - GM2001"
end initializeInterface

% Update
body procedure update

    % Declartions
    var InnerBorderWidth := 35
    var OuterBorderWidth := 1
    var font := Font.New ("serif:12")

    Draw.FillBox (200, 80, 800, 325, grey)
    % Text

    Font.Draw ("There are " + intstr (numberOfGrocery) + " items left!", 400, 300, font, black)
    % Receipt
    Font.Draw ("Receipt - GM2001", 400, 270, font, black)
    Font.Draw ("PST", 400, 240, font, black)
    Font.Draw ("GST", 400, 210, font, black)
    Font.Draw ("Subtotal", 400, 180, font, black)
    Font.Draw ("Total", 400, 150, font, black)

    Font.Draw (realstr (cost * PST, 2), 600, 240, font, black)
    Font.Draw (realstr (cost * GST, 2), 600, 210, font, black)
    Font.Draw (realstr (cost * TST, 2), 600, 180, font, black)
    Font.Draw (realstr (total, 2), 600, 150, font, black)
    % Decorations
    Draw.Box (InnerBorderWidth, InnerBorderWidth, WINDOW_X - InnerBorderWidth, WINDOW_Y - InnerBorderWidth, black)
    Draw.Box (OuterBorderWidth, OuterBorderWidth, WINDOW_X - OuterBorderWidth, WINDOW_Y - OuterBorderWidth, black)

    Pic.Draw (mainIconPic, 430, 400, 0)

end update
% The Main Program
initializeInterface

% Quitting
loop
    exit when GUI.ProcessEvent
end loop
% Actually Quits
close : outputFile
Window.Close (winID)
