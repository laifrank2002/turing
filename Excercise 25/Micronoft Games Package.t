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
var game1, game2, game3, paint : int
var quitButton : int
var backButton : int
var button : int
var numberTextField : int
var drawCircle : int
% paint
var oldx, oldy : int
var canvas : int % The drawing canvas.
var clear : int % The clear button.
% misc
var number : int
var buttony : int := 20
var game : int := 0
% procedures
% paint
procedure MouseDown (mx, my : int)
    oldx := mx
    oldy := my
end MouseDown
procedure MouseDrag (mx, my : int)
    GUI.DrawLine (canvas, oldx, oldy, mx, my, colorfg)
    oldx := mx
    oldy := my
end MouseDrag
procedure DoNothing (mx, my : int)
end DoNothing
procedure Clear
    GUI.DrawCls (canvas)
end Clear


% hide main
procedure hide_main
    cls
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)
    GUI.Hide (game1)
    GUI.Hide (game2)
    GUI.Hide (game3)
    GUI.Hide (paint)
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
% game 3 circle
procedure drawCircle_handle 
    var x,y, Radius, Color : int
    randint(x,1,maxx)
    randint(y,1,maxy)
    randint(Radius,1,100)
    randint(Color,1,15)
    Draw.FillOval (x, y, Radius, Radius, Color)
    GUI.Refresh
end drawCircle_handle
% game 3
procedure game3_start 
    game := 3
    hide_main
    drawCircle := GUI.CreateButton (5, 35, 50, "Draw Circle", drawCircle_handle)
end game3_start
% paint
procedure paint_handle
    game := 4
    hide_main
    canvas := GUI.CreateCanvasFull (10, 30, maxx - 20, maxy - 40, 0,
    MouseDown, MouseDrag, DoNothing)
    clear := GUI.CreateButton (maxx div 2 - 120, 5, 40, "Clear", Clear)
end paint_handle
% back to main screen
procedure back_mainScreen
    cls
    GUI.SetBackgroundColour (BACKGROUND_COLOUR)
    if game = 4 then
	GUI.Dispose(canvas)
	GUI.Dispose(clear)
    end if
    if game = 3 then
	GUI.Dispose(drawCircle)
    end if
    if game = 2 then
	GUI.Dispose (button)
	buttony := 20
    end if
    if game = 1 then
	GUI.Dispose (numberTextField)
    end if
    GUI.Hide (backButton)
    GUI.Show (game1)
    GUI.Show (game2)
    GUI.Show (game3)
    GUI.Show (paint)
    GUI.Show (quitButton)
    Font.Draw("MicroNoft Games Package 2017",100, 100, font, black)
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
    game3 := GUI.CreateButton (5, 35, 50, "Draw Circle", game3_start)
    paint := GUI.CreateButton (215, 35, 50, "Paint", paint_handle)
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

