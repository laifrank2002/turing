% Turing Browser
% By Frank, Daniel, and Akshay
% VERSION 0.8315
/*
 CHANGELOG
 ======_       ____    ______  ______
 =====/ /     / _  |  / ____/ / ____/
 ====/ /     / / | | / /__   / /
 ===/ /     / / / / / ___/  / /___
 ==/ /     / / / / / /     /___   /
 =/ /___  / /_/ / / /___  ____/  /
 /_____/ /_____/ /_____/ /______/

 0.815
 commenting added
 changelog added
 improved organization
 configurations improved
 added quit procedure
 cleaned up messy areas
 0.816
 added quit button
 cleaned up more UI
 0.820
 added links
 utilized checkmouse
 0.821
 links work but something else does not
 0.8211
 multiple links work but very buggy
 0.8220
 links work!!!
 0.830
 links work better!!!
 0.831
 minor changes
 0.8315
 GUI compatable!
 */
import GUI
% consts

% fonts
const headerFont := Font.New ("serif:24")
const normalFont := Font.New ("serif:12")
% y-shift for various fonts and objects
const headerSpace := 50
const normalSpace := 30
const buttonSpace := 30
% x-margin from the left
const margin := 50
% window config
% possible configs
/*
 1600x900
 1366x768
 1024x768
 640x480
 */
const WINDOW_X := 1366
const WINDOW_Y := 768
const WINDOW_TITLE := "Turing Browser 2017"
const winIDArgs := "position:0;0,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y) + ",title:" + WINDOW_TITLE
const winID := Window.Open (winIDArgs)
const windowBar := 100


const BCOLOUR := 0

% UI Data
var addressBar : int
var quitButton : int
var reloadButton : int
var y := maxy - 150
var height := 0
var pageRefresh : boolean := false
% Loading Element ID
var pagefileId : int
% Pictures Data
var picsNum : int := 0
var pics : flexible array 1 .. picsNum of int
% Links Data
var pagesNum : int := 0
var pages : flexible array 1 .. pagesNum of string
% Links x/y
var links : int := 0
var xUpper : flexible array 1 .. links of int
var xLower : flexible array 1 .. links of int
var yUpper : flexible array 1 .. links of int
var yLower : flexible array 1 .. links of int
% Buttons Data
var buttons : flexible array 1 .. 0 of int
var buttonsNum : int := 0
% Music Element
var playing : boolean := false
% procedures
forward procedure addressBar_handle (address : string)
forward procedure browserUI
forward procedure resetPage
forward procedure dummy

% processes
/*
 process checkMouse
 var x, y, btnUpDown, btnNumber : int
 loop
 Mouse.ButtonWait ("down", x, y, btnNumber, btnUpDown)
 if links > 0 then
 for i : 1 .. links
 Draw.Box (xLower (i), yLower (i), xUpper (i), yUpper (i), black)
 if x > xLower (i) and x < xUpper (i) and y > yLower (i) and y < yUpper (i) then
 GUI.SetText (addressBar, pages (i))
 addressBar_handle (pages (i))
 exit
 end if
 end for
 end if
 exit when pageRefresh
 end loop
 end checkMouse
 */
procedure checkMouse (x, y : int)
    if links > 0 then
	for i : 1 .. links
	    Draw.Box (xLower (i), yLower (i), xUpper (i), yUpper (i), black)
	    if x > xLower (i) and x < xUpper (i) and y > yLower (i) and y < yUpper (i) then
		GUI.SetText (addressBar, pages (i))
		addressBar_handle (pages (i))
		exit
	    end if
	end for
    end if
end checkMouse
% loopy
process GUILoop
    loop
	exit when GUI.ProcessEvent
    end loop
end GUILoop
% concurrently plays looped
process Play (songName : string)
    loop
	Music.PlayFile (songName)
	exit when not (playing)
    end loop
end Play

% procedures
% badly named button handler
body procedure dummy
    resetPage
    GUI.SetText (addressBar, pages (pagesNum))
    addressBar_handle (pages (pagesNum))
end dummy
% resets the page to default
body procedure resetPage
    pageRefresh := true
    % Reset UI
    cls
    height := 0
    y := maxy - 150
    browserUI
    % Make sure they don't go astray!

    GUI.SetPosition (addressBar, 50, maxy - 60)
    GUI.SetPosition (quitButton, maxx - 80, maxy - 60)
    GUI.Refresh

    % Reset Hyperlinks
    for i : 1 .. buttonsNum
	GUI.Dispose (buttons (i))
    end for
    links := 0
    pagesNum := 0
    buttonsNum := 0
    new buttons, buttonsNum
    new xUpper, links
    new xLower, links
    new yUpper, links
    new yLower, links
    new pages, links
    % Reset Pictures
    for i : 1 .. picsNum
	Pic.Free (pics (i))
    end for
    picsNum := 0

    % Reset Sound
    Music.PlayFileStop
    playing := false

    % Final Reset
    pageRefresh := false
end resetPage
% loads the page
procedure loadPage (address : string)
    resetPage
    if not (File.Exists (address)) then
	Font.Draw ("404 Page Not Found", margin, y, headerFont, black)
	height += headerSpace
	return
    end if
    var temp : string
    var text : string
    open : pagefileId, address, get
    loop
	exit when eof (pagefileId)
	% get in pairs
	get : pagefileId, temp : *
	get : pagefileId, text : *
	% interpreter
	case temp of
	    label "header" :
		Font.Draw (text, margin, y, headerFont, black)
		% shift down for next element
		y -= headerSpace
		height += headerSpace
	    label "button" :
		% note: should be outdated
		pagesNum += 1
		buttonsNum += 1
		new buttons, buttonsNum
		new pages, pagesNum
		buttons (buttonsNum) := GUI.CreateButton (margin, y, 0, text, dummy)
		get : pagefileId, pages (pagesNum) : *
		% shift down for next element
		y -= buttonSpace
		height += buttonSpace
	    label "link" :
		% preupdate page function
		pagesNum += 1
		new pages, pagesNum
		get : pagefileId, pages (pagesNum) : *

		% draws the links
		Font.Draw (text, margin, y, normalFont, blue)
		% registers
		links += 1
		new xLower, links
		new xUpper, links
		new yUpper, links
		new yLower, links
		xLower (links) := margin
		xUpper (links) := (margin + (length (text) * 16))
		yUpper (links) := y + normalSpace
		yLower (links) := y
		% debugging

		% shift down for next element
		y -= normalSpace
		height += normalSpace
	    label "picture" :
		picsNum += 1
		new pics, picsNum
		pics (picsNum) := Pic.FileNew (text)
		y -= Pic.Height (pics (picsNum))
		Pic.Draw (pics (picsNum), margin, y, picCopy)
		% shift down for next element
		y -= normalSpace
		height += normalSpace
		height += Pic.Height (pics (picsNum))
	    label "music" :
		playing := true
		fork Play (text)
	    label :
		Font.Draw (text, margin, y, normalFont, black)
		% shift down for next element
		y -= normalSpace
		height += normalSpace
	end case
    end loop
    % end close
    close : pagefileId
end loadPage
% handles the clicking
body procedure addressBar_handle (address : string)

    loadPage (address)
    Window.Set (winID, "position:0;0,graphics:" + intstr (WINDOW_X) + ";" + intstr (height + windowBar + margin) + ",title:" + WINDOW_TITLE)

    loadPage (address)
end addressBar_handle
% all the UI elements of the browser (currently only 2)
body procedure browserUI
    Draw.FillBox (0, maxy - windowBar, maxx, maxy, 2)
    GUI.Refresh
end browserUI
% quitter
procedure quitBrowser
    GUI.Quit
    Window.Close (winID)
end quitBrowser
% init (make sure to put this LAST)
procedure initUI
    addressBar := GUI.CreateTextField (50, maxy - 60, maxx - 250, "home/index.txt", addressBar_handle)
    quitButton := GUI.CreateButton (maxx - 80, maxy - 60, 0, "EXIT", quitBrowser)

    GUI.SetMouseEventHandler (checkMouse)
end initUI
% main thing
initUI
browserUI

loop
    exit when GUI.ProcessEvent
end loop
