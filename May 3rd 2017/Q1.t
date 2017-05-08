import GUI

% Config
const BACKGROUND_COLOUR := 15
const WINDOW_X := 350
const WINDOW_Y := 150
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
var winID : int := Window.Open (winIDArgs)
var font := Font.New ("serif:12")

var inputTextField : int
var outputTextField: int
var convertButton : int
var quitButton : int

function Capitalize(input : string) : string
    var newword := ""
    for i : 1 .. length(input)
	if input(i) >= "a" and input(i) <= "z" then
	    newword += chr(ord(input(i)) + ord("A") - ord("a"))
	else
	    newword += input(i)
	end if
    end for
    result newword
end Capitalize

procedure textDoNothing (input : string)

end textDoNothing

procedure inputTextField_handle(input : string)
    GUI.SetText(outputTextField,Capitalize(GUI.GetText(inputTextField)))
end inputTextField_handle

procedure convertButton_handle
    inputTextField_handle(GUI.GetText(inputTextField))
end convertButton_handle

inputTextField := GUI.CreateTextField(15,100,100,"word",inputTextField_handle)
outputTextField := GUI.CreateTextField(215,100,100,"WORD",textDoNothing)
convertButton := GUI.CreateButton(100,55,100,"Make Uppercase",convertButton_handle)
quitButton := GUI.CreateButton(100,15,100,"Quit",GUI.Quit)
% Loopy
loop
    exit when GUI.ProcessEvent
end loop
Window.Close (winID)
