import GUI

% Declaration section

const BACKGROUND_COLOUR := white
const MESSAGE_1 := "Ouch!"
const MESSAGE_2 := "Stop that!"

var activityButton : int
var sellButton : int
var fontLarge : int
var message1IsVisible : boolean
var quitButton : int

var count : int := 100
var countString : string
var gold : int := 0
var goldString : string

procedure handleClick2
    
    const MASK_HEIGHT := 200
    const MASK_WIDTH := 300
    const MESSAGE1_COLOUR := brightblue
    const MESSAGE2_COLOUR := brightred
    const MESSAGE_X := 100
    const MESSAGE_Y := 300
    
    
    
    drawfillbox (MESSAGE_X, MESSAGE_Y - 55, MESSAGE_X + MASK_WIDTH,
	MESSAGE_Y + MASK_HEIGHT, BACKGROUND_COLOUR)
    
    if count >= 10 then
	count -= 10
	gold += 1
    end if
    
    countString := intstr (count)
    goldString := intstr (gold)
    
    Font.Draw ("Resources : ", MESSAGE_X - 50, MESSAGE_Y, fontLarge, black)
    Font.Draw (countString, MESSAGE_X + 200, MESSAGE_Y, fontLarge, black)
    
    Font.Draw ("Gold : ", MESSAGE_X - 50, MESSAGE_Y - 50, fontLarge, black)
    Font.Draw (goldString, MESSAGE_X + 100, MESSAGE_Y - 50, fontLarge, black)
    
end handleClick2

procedure handleClick

    const MASK_HEIGHT := 200
    const MASK_WIDTH := 300
    const MESSAGE1_COLOUR := brightblue
    const MESSAGE2_COLOUR := brightred
    const MESSAGE_X := 100
    const MESSAGE_Y := 300


    count := count + 1
    countString := intstr (count)
    goldString := intstr (gold)
    % Mask the existing message and write the new message. Recall that letters
    % within the message might have descenders, so start the mask 25 pixels
    % lower than the message just in case.
    drawfillbox (MESSAGE_X, MESSAGE_Y - 55, MESSAGE_X + MASK_WIDTH,
	MESSAGE_Y + MASK_HEIGHT, BACKGROUND_COLOUR)
    %if message1IsVisible then
    %    Font.Draw (MESSAGE_2, MESSAGE_X, MESSAGE_Y, fontLarge, MESSAGE2_COLOUR)
    %else
    %    Font.Draw (MESSAGE_1, MESSAGE_X, MESSAGE_Y, fontLarge, MESSAGE1_COLOUR)
    %end if
    Font.Draw ("Resources : ", MESSAGE_X - 50, MESSAGE_Y, fontLarge, black)
    Font.Draw (countString, MESSAGE_X + 200, MESSAGE_Y, fontLarge, black)
    
    Font.Draw ("Gold : ", MESSAGE_X - 50, MESSAGE_Y - 50, fontLarge, black)
    Font.Draw (goldString, MESSAGE_X + 100, MESSAGE_Y - 50, fontLarge, black)
    % Reverse the flag.
    message1IsVisible := not message1IsVisible

end handleClick


procedure initializeInterface

    % Configure the run window.
    setscreen ("graphics, nobuttonbar, position: centre; truemiddle")

    % Establish the buttons.
    activityButton := GUI.CreateButton (100, 200, 50, "Click me!", handleClick)
    sellButton := GUI.CreateButton (200,100, 50, "Sell 10 Resources!", handleClick2)
    quitButton := GUI.CreateButton (100, 100, 50, "Quit", GUI.Quit)
    

    % Establish the fonts.
    fontLarge := Font.New ("Arail:24:Bold")

    % Set the message flag.
    message1IsVisible := false

end initializeInterface


% Main program

initializeInterface

% Process events until the user signals quit.
loop
    exit when GUI.ProcessEvent
end loop
