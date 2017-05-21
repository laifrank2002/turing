% STAR STUB
import GUI
% consts
const WINDOW_X := 450
const WINDOW_Y := 425
const winIDArgs := "position:300;300,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y)
const winID := Window.Open (winIDArgs)
const BCOLOUR := 3

const outlooktableFileIdName := "data(txt)/outlook.txt"
const provinces := 13
const X_Margin := 50
const Y_Margin := 25
const defFont := Font.New ("serif:12")
const MAXSTAR := 3
const STARSIZE := 25
% vars
var outlooktableFileId : int
var adId : int
var temp : string

var y : int := Y_Margin
% procedures

% drawing the things
procedure drawStar (x, y : int)
    Draw.FillStar (x, y, x + STARSIZE, y + STARSIZE, yellow)
end drawStar
procedure drawBlank (x, y : int)
    Draw.FillStar (x, y, x + STARSIZE, y + STARSIZE, grey)
end drawBlank
procedure drawQuestion (x, y : int)
    Draw.FillBox (x, y, x + STARSIZE, y + STARSIZE, black)
end drawQuestion

procedure getNext
    var x : int := X_Margin
    var input : string
    var star : string

    get : outlooktableFileId, input : *
    get : outlooktableFileId, star : *

    Font.Draw (input, x, y, defFont, black)
    x += 250
    for i : 1 .. MAXSTAR
	case star (i) of
	    label "*" :
		drawStar (x, y)
	    label "o" :
		drawBlank (x, y)
	    label "?" :
		drawQuestion (x, y)
	end case
	x += 25
    end for

    y += 25
end getNext

% fileIO
open : outlooktableFileId, outlooktableFileIdName, get
% init
adId := Pic.FileNew ("images/banner.bmp")
GUI.SetBackgroundColour (BCOLOUR)

Draw.FillBox (0, maxy - 65, maxx, maxy, 11)
get : outlooktableFileId, temp : *
Font.Draw (temp, 25, maxy - 25, defFont, black)
get : outlooktableFileId, temp : *
Font.Draw (temp, 25, maxy - 55, defFont, black)
for i : 1 .. provinces
    getNext
end for



close : outlooktableFileId
