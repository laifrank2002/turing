% Music Player
import GUI

const tracks : int := 7
% config
const WINDOW_X := 640
const WINDOW_Y := 480
const WINDOW_TITLE := "Music Player"
const winIDArgs := "position:0;0,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y) + ",title:" + WINDOW_TITLE
const winID := Window.Open (winIDArgs)

% fonts
const headerFont := Font.New ("serif:24")
const normalFont := Font.New ("serif:12")
const MARGIN := 50

% GUI
var quitButton : int
var playButton : int
var stopButton : int
var nextButton : int
var backButton : int

var playing : boolean := false
var musicTitle : string := "music/track1.mp3"

process playMusic (trackName : string)
    loop
	Music.PlayFile(musicTitle)
	exit when not(playing)
    end loop
end playMusic

% procedures
procedure reset
    cls
    GUI.Refresh
end reset

procedure quitButton_handle
    GUI.Quit
    Window.Close(winID)
    playing := false
    Music.PlayFileStop
end quitButton_handle

procedure playButton_handle
    playing := true
    Music.PlayFileStop
    fork playMusic (musicTitle)
end playButton_handle

procedure stopButton_handle
    playing := false
    Music.PlayFileStop
end stopButton_handle

procedure nextButton_handle
    if strint(musicTitle(12..*-4)) = tracks then
	musicTitle := "music/track1" + ".mp3"
    else
	musicTitle := "music/track" + intstr(strint(musicTitle(12..*-4)) + 1) + ".mp3"
    end if
end nextButton_handle

procedure backButton_handle
    if strint(musicTitle(12..*-4)) = 1 then
	musicTitle := "music/track" + intstr(tracks) + ".mp3"
    else
	musicTitle := "music/track" + intstr(strint(musicTitle(12..*-4)) - 1) + ".mp3"
    end if
end backButton_handle

quitButton := GUI.CreateButton (maxx - 110,10,100,"Quit", quitButton_handle)
playButton := GUI.CreateButton (100,100, 100, "Play", playButton_handle)
stopButton := GUI.CreateButton (10, 100, 50, "Stop", stopButton_handle)
nextButton := GUI.CreateButton (10,200, 50, "Next", nextButton_handle)
backButton := GUI.CreateButton (110,200, 50, "Back", backButton_handle)
loop
    exit when GUI.ProcessEvent
end loop
