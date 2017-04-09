
import GUI
%Declarations
const BACKGROUND_COLOUR := grey
const DATA_FILE := "data.txt"
var winID : int
var name : string
var numberOfGrocery : string

var nameTextField : int
var numberOfGroceryTextField : int

% Textfield for numberOfGrocery
procedure numberOfGroceryEntered (text : string)
    name := GUI.GetText (nameTextField)
end numberOfGroceryEntered
% Textfield for name
procedure nameEntered (text : string)
    numberOfGrocery := GUI.GetText (numberOfGroceryTextField)
end nameEntered


% Initializing the Interface
procedure initializeInterface

    % Declarations

    winID := Window.Open ("position:300;300,graphics:300;100")


    var quitButton := GUI.CreateButton (110, 5, 100, "Submit & Quit", GUI.Quit)

    nameTextField := GUI.CreateTextFieldFull (80, 70, 200, "Name",
	nameEntered, GUI.INDENT, 0, 0)
    numberOfGroceryTextField := GUI.CreateTextFieldFull (80, 40, 200, "0",
	numberOfGroceryEntered, GUI.INDENT, 0, 0)

    var nameLabel := GUI.CreateLabelFull (75, 70, "Name", 0, 0,
	GUI.RIGHT, 0)
    var numberOfGroceryLabel := GUI.CreateLabelFull (75, 40, "# of Items", 0, 0,
	GUI.RIGHT, 0)
    % Configure the run window.
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)

end initializeInterface

% Main program

initializeInterface

% Quit
loop
    exit when GUI.ProcessEvent
end loop

% Auteur Processing
name := GUI.GetText (nameTextField)
numberOfGrocery := GUI.GetText (numberOfGroceryTextField)

% Output
var outputFile : int

open : outputFile, DATA_FILE, put

put : outputFile, "2"
put : outputFile, name
put : outputFile, numberOfGrocery

close : outputFile

% Opens Main

if not Sys.Exec ("main.exe") then
    put "The Sys.Exec call failed"
    put "Error: ", Error.LastMsg
end if

% Actually Quits
Window.Close (winID)
