%
import GUI

% config
const BACKGROUND_COLOUR := 15
const WINDOW_X := 350
const WINDOW_Y := 150
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int
var font := Font.New ("serif:12")
% buttons & textfields
var game1, game2 : int
var quitButton : int
var backButton : int
var button : int
var numberTextField : int
% misc
var number : int
var buttony : int := 20
var game : int := 0
% procedures




% hide main
procedure hide_main
    cls
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)
    GUI.Hide (game1)
    GUI.Hide (game2)
    GUI.Hide (quitButton)
    GUI.Show (backButton)
end hide_main
% game 1 procedure
procedure numberTextField_handle (input : string)

    var usernum : int := 0
    if strintok (GUI.GetText (numberTextField)) then
	usernum := strint (GUI.GetText (numberTextField))
    end if
    if usernum = number then
	Draw.FillBox (0, 65, 140, 95, 15)
	Font.Draw ("Congradulations!", 5, 75, font, black)
    elsif usernum < number then
	Draw.FillBox (0, 65, 140, 95, 15)
	Font.Draw ("Higher!", 5, 75, font, black)
    else
	Draw.FillBox (0, 65, 140, 95, 15)
	Font.Draw ("Lower!", 5, 75, font, black)
    end if
end numberTextField_handle
% game 1 ie Guessing Game
procedure game1_start
    game := 1
    hide_main
    Font.Draw ("Guessing game! To start", 5, 125, font, black)
    Font.Draw (", enter a number from 1 - 100.", 100, 100, font, black)
    randint (number, 1, 100)
    numberTextField := GUI.CreateTextField (5, 100, 50, "0", numberTextField_handle)
end game1_start
% game 2 procedure
procedure button_handle
    buttony += 10
    GUI.Dispose(button)
    button := GUI.CreateButtonFull(50, 50, 100, "GROW!", button_handle,buttony," ",false)
end button_handle
% game 2
procedure game2_start
    game := 2
    hide_main
    button := GUI.CreateButton (50, 50, 100, "GROW!", button_handle)
end game2_start

% back to main screen
procedure back_mainScreen
    cls
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)
    if game = 2 then
	GUI.Dispose (button)
    end if
    if game = 1 then
	GUI.Dispose (numberTextField)
    end if
    GUI.Hide (backButton)
    GUI.Show (game1)
    GUI.Show (game2)
    GUI.Show (quitButton)

end back_mainScreen
% main screen
procedure mainScreen

    % config the run window
    winID := Window.Open (winIDArgs)
    Window.Set (winID, "title: Games Package 2017")
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)
    % two main buttons
    game1 := GUI.CreateButton (5, 10, 50, "Guessing Game", game1_start)
    game2 := GUI.CreateButton (215, 10, 50, "Growing Game", game2_start)
    % quit button
    backButton := GUI.CreateButton (145, 10, 10, "Back", back_mainScreen)
    GUI.Hide (backButton)
    quitButton := GUI.CreateButton (145, 10, 10, "Quit", GUI.Quit)
    Font.Draw("MicroNoft Games Package 2017",100, 100, font, black)
end mainScreen

% main program
mainScreen

loop
    exit when GUI.ProcessEvent
end loop

Window.Close (winID)

