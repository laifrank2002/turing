import GUI

% resource bar graphics
const UBAR_HEIGHT := 50
const LBAR_HEIGHT := 25
const UBAR_BOX_WIDTH := 200
const UBAR_BOX_MARGIN := 5
% purchase screen buttons config
const PURCHASE_BUTTON_MARGIN := 210
const PURCHASE_BUTTON_WIDTH := 150
const PURCHASE_BUTTON_APART := 165
const PURCHASE_BUTTON_HEIGHT := 450
const PURCHASE_BUTTON_HEIGHT_APART := 150
% config
const WINDOW_X := 1024
const WINDOW_Y := 768
const WINDOW_TITLE := "Munitions Factory"
const winIDArgs := "position:0;0,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y) + ",title:" + WINDOW_TITLE
const winID := Window.Open (winIDArgs)

% fonts
const headerFont := Font.New ("serif:24")
const normalFont := Font.New ("serif:12")
const MARGIN := 50
% colour config
const UI_COLOUR := 12
const MAIN_COLOUR := 15
const MAIN_BOX_COLOUR := 30
const UBAR_COLOUR := 8
const LBAR_COLOUR := 20
const TITLE_BOX_COLOUR := 0

% menu
var productionButton : int
var purchasingButton : int
var exchangeButton : int
var statisticsButton : int
var researchButton : int
var optionsButton : int
var quitButton : int
% menu booleans
var production : boolean := false
var purchasing : boolean := false
var exchange : boolean := false
var statistics : boolean := false
var research : boolean := false
var options : boolean := false
% production buttons
var clickMunitions : int
var clickMoney : int
var clickWorkers : int
var clickWeapons : int
var clickStars : int
% purchasing buttons
var munitionsProducerButton : array 1 .. 3 of int
var moneyProducerButton : array 1 .. 3 of int
var workersProducerButton : array 1 .. 3 of int
var weaponsProducerButton : array 1 .. 3 of int
var starsProducerButton : array 1 .. 3 of int
% options buttons
var saveTextField : int
var saveButton : int
var loadTextField : int
var loadButton : int
var playButton : int
var muteButton : int
% imager
var numOfPictures : int := 6
var picture : flexible array 1 .. numOfPictures of int
var pictureNames : array 1 .. 6 of string := init (
    "images/greatwar_2.jpg", "images/ammo.bmp", "images/money.bmp",
    "images/workers.bmp", "images/weapons.bmp", "images/stars.bmp"
    )
% stats(you'll need to save this)

% main resources
var munitions : int := 0
var money : int := 0
var workers : int := 0
var weapons : int := 0
var stars : int := 0

var clicks : int := 0
% buildings
var munitionsProducer : array 1 .. 3 of int := init (0, 0, 0)
var moneyProducer : array 1 .. 3 of int := init (0, 0, 0)
var workersProducer : array 1 .. 3 of int := init (0, 0, 0)
var weaponsProducer : array 1 .. 3 of int := init (0, 0, 0)
var starsProducer : array 1 .. 3 of int := init (0, 0, 0)
% resulting pps
var munitionsPS : int := 1
var moneyPS : int := 1
var workersPS : int := 1
var weaponsPS : int := 1
var starsPS : int := 1

% misc
var EXIT : boolean := false
var playing : boolean := false
var dataLine : int := 0
var data : flexible array 1 .. dataLine of string

% procedures
forward procedure frame
% save procedure
procedure save (name : string)
    var fileId : int
    % putting
    dataLine := 21
    new data, dataLine
    data (1) := intstr (munitions)
    data (2) := intstr (money)
    data (3) := intstr (workers)
    data (4) := intstr (weapons)
    data (5) := intstr (stars)
    data (6) := intstr (clicks)
    data (7) := intstr (munitionsProducer (1))
    data (8) := intstr (munitionsProducer (2))
    data (9) := intstr (munitionsProducer (3))
    data (10) := intstr (moneyProducer (1))
    data (11) := intstr (moneyProducer (2))
    data (12) := intstr (moneyProducer (3))
    data (13) := intstr (workersProducer (1))
    data (14) := intstr (workersProducer (2))
    data (15) := intstr (workersProducer (3))
    data (16) := intstr (weaponsProducer (1))
    data (17) := intstr (weaponsProducer (2))
    data (18) := intstr (weaponsProducer (3))
    data (19) := intstr (starsProducer (1))
    data (20) := intstr (starsProducer (2))
    data (21) := intstr (starsProducer (3))
    open : fileId, name, put
    for i : 1 .. dataLine
	put : fileId, data (i)
    end for
    close : fileId
end save
procedure load (name : string)
    if File.Exists (name) then
	var fileId : int
	% putting
	dataLine := 21
	new data, dataLine
	open : fileId, name, get
	for i : 1 .. dataLine
	    exit when eof (fileId)
	    get : fileId, data (i) : *
	end for
	close : fileId
	munitions := strint (data (1))
	money := strint (data (2))
	workers := strint (data (3))
	weapons := strint (data (4))
	stars := strint (data (5))
	clicks := strint (data (6))
	munitionsProducer (1) := strint (data (7))
	munitionsProducer (2) := strint (data (8))
	munitionsProducer (3) := strint (data (9))
	moneyProducer (1) := strint (data (10))
	moneyProducer (2) := strint (data (11))
	moneyProducer (3) := strint (data (12))
	workersProducer (1) := strint (data (13))
	workersProducer (2) := strint (data (14))
	workersProducer (3) := strint (data (15))
	weaponsProducer (1) := strint (data (16))
	weaponsProducer (2) := strint (data (17))
	weaponsProducer (3) := strint (data (18))
	starsProducer (1) := strint (data (19))
	starsProducer (2) := strint (data (20))
	starsProducer (3) := strint (data (21))
    end if
end load
% updater
procedure update
    munitionsPS := (1 * munitionsProducer (1)) + (100 * munitionsProducer (2))
	+ (10000 * munitionsProducer (3))
    moneyPS := (1 * moneyProducer (1)) + (100 * moneyProducer (2))
	+ (10000 * moneyProducer (3))
    workersPS := (1 * workersProducer (1)) + (100 * workersProducer (2))
	+ (10000 * workersProducer (3))
    weaponsPS := (1 * weaponsProducer (1)) + (100 * weaponsProducer (2))
	+ (10000 * weaponsProducer (3))
    starsPS := (1 * starsProducer (1)) + (100 * starsProducer (2))
	+ (10000 * starsProducer (3))

    munitions += munitionsPS
    money += moneyPS
    workers += workersPS
    weapons += weaponsPS
    stars += starsPS

end update
% main frame process
process drawFrame
    var times : int := 0
    loop
	% timed
	if Time.Elapsed mod 100 = 0 then
	    frame
	    if EXIT then
		Window.Close (winID)
		exit
	    else
		View.Update

		if times = 10 then
		    update
		    times := 1
		end if
		times += 1
	    end if
	end if
    end loop
end drawFrame

% music!

process playMusic
    loop
	exit when not (playing)
    end loop
end playMusic

% HIDE EVERYTHING!
procedure hideAll
    % production
    GUI.Hide (clickMunitions)
    GUI.Hide (clickMoney)
    GUI.Hide (clickWorkers)
    GUI.Hide (clickWeapons)
    GUI.Hide (clickStars)
    % purchasing
    for i : 1 .. 3
	GUI.Hide (munitionsProducerButton (i))
	GUI.Hide (moneyProducerButton (i))
	GUI.Hide (workersProducerButton (i))
	GUI.Hide (weaponsProducerButton (i))
	GUI.Hide (starsProducerButton (i))
    end for
    % options
    GUI.Hide (saveButton)
    GUI.Hide (loadButton)
    GUI.Hide (saveTextField)
    GUI.Hide (loadTextField)
    % sets all screen values to false
    production := false
    purchasing := false
    exchange := false
    statistics := false
    research := false
    options := false
end hideAll
% main frame
View.Set ("offscreenonly")
body procedure frame
    if EXIT then
	return
    end if
    cls
    % Picture Screen
    Draw.FillBox (0, maxy - 250, maxx, maxy - UBAR_HEIGHT, UI_COLOUR)
    Pic.Draw (picture (1), 0, maxy - 650, picMerge)
    Draw.FillBox (maxx div 2 - 25, maxy - 125, maxx div 2 + length (WINDOW_TITLE) * 20, maxy - UBAR_HEIGHT, TITLE_BOX_COLOUR)
    Font.Draw (WINDOW_TITLE, maxx div 2, maxy - 100, headerFont, black)
    % Upper Resource Bar
    Draw.FillBox (0, maxy - UBAR_HEIGHT, maxx, maxy, UBAR_COLOUR)
    %   boxes
    for decreasing i : 5 .. 1
	Draw.Box (UBAR_BOX_MARGIN + (1000 - (i * UBAR_BOX_WIDTH)) + UBAR_BOX_WIDTH,
	    maxy - UBAR_HEIGHT + UBAR_BOX_MARGIN,
	    maxx - UBAR_BOX_MARGIN - (UBAR_BOX_WIDTH * i),
	    maxy - UBAR_BOX_MARGIN,
	    black)
    end for
    %   font
    Font.Draw (intstr (munitions), UBAR_BOX_MARGIN + 20, maxy - UBAR_HEIGHT + UBAR_BOX_MARGIN * 2, headerFont, black)
    Font.Draw (intstr (money), UBAR_BOX_MARGIN + 220, maxy - UBAR_HEIGHT + UBAR_BOX_MARGIN * 2, headerFont, black)
    Font.Draw (intstr (workers), UBAR_BOX_MARGIN + 420, maxy - UBAR_HEIGHT + UBAR_BOX_MARGIN * 2, headerFont, black)
    Font.Draw (intstr (weapons), UBAR_BOX_MARGIN + 620, maxy - UBAR_HEIGHT + UBAR_BOX_MARGIN * 2, headerFont, black)
    Font.Draw (intstr (stars), UBAR_BOX_MARGIN + 820, maxy - UBAR_HEIGHT + UBAR_BOX_MARGIN * 2, headerFont, black)

    %   icons
    Pic.Draw (picture (2), 150, maxy - 50, picMerge)
    Pic.Draw (picture (3), 350, maxy - 50, picMerge)
    Pic.Draw (picture (4), 550, maxy - 50, picMerge)
    Pic.Draw (picture (5), 750, maxy - 50, picMerge)
    Pic.Draw (picture (6), 950, maxy - 50, picMerge)
    % Main Screen
    Draw.FillBox (0, LBAR_HEIGHT, maxx, maxy - 250, MAIN_COLOUR)
    Draw.FillBox (200, LBAR_HEIGHT, maxx, maxy - 250, MAIN_BOX_COLOUR)
    % Lower Credits Bar
    Draw.FillBox (0, 0, maxx, LBAR_HEIGHT, LBAR_COLOUR)
    Font.Draw ("Built by LDEV Productions, Frank Lai, 2017", MARGIN, 5, normalFont, black)
    % End Refresh
    GUI.Refresh

end frame
% button handling
procedure productionButton_handle
    hideAll
    GUI.Show (clickMunitions)
    GUI.Show (clickMoney)
    GUI.Show (clickWorkers)
    GUI.Show (clickWeapons)
    GUI.Show (clickStars)
    production := true
    clicks += 1
end productionButton_handle

procedure purchasingButton_handle
    hideAll
    for i : 1 .. 3
	GUI.Show (munitionsProducerButton (i))
	GUI.Show (moneyProducerButton (i))
	GUI.Show (workersProducerButton (i))
	GUI.Show (weaponsProducerButton (i))
	GUI.Show (starsProducerButton (i))
    end for
    purchasing := true
    clicks += 1
end purchasingButton_handle

procedure exchangeButton_handle
    hideAll
    exchange := true
    clicks += 1
end exchangeButton_handle

procedure statisticsButton_handle
    hideAll
    statistics := true
    clicks += 1
end statisticsButton_handle

procedure researchButton_handle
    hideAll
    research := true
    clicks += 1
end researchButton_handle

procedure optionsButton_handle
    hideAll
    GUI.Show (saveButton)
    GUI.Show (loadButton)
    GUI.Show (saveTextField)
    GUI.Show (loadTextField)
    options := true
    clicks += 1
end optionsButton_handle

procedure quitButton_handle
    hideAll
    clicks += 1
    GUI.Quit
    EXIT := true
end quitButton_handle
% production button handling
procedure clickMunitions_handle
    munitions += 1
    clicks += 1
end clickMunitions_handle
procedure clickMoney_handle
    money += 1
    clicks += 1
end clickMoney_handle
procedure clickWorkers_handle
    workers += 1
    clicks += 1
end clickWorkers_handle
procedure clickWeapons_handle
    weapons += 1
    clicks += 1
end clickWeapons_handle
procedure clickStars_handle
    stars += 1
    clicks += 1
end clickStars_handle
% purchasing buttons handling(get ready!)
procedure munitionsProducerButton1_handle
    if money >= 10 and workers >= 1 then
	money -= 10
	workers -= 1
	munitionsProducer (1) += 1
    end if
    clicks += 1
end munitionsProducerButton1_handle
procedure munitionsProducerButton2_handle
    if money >= 1000 and workers >= 10 then
	money -= 1000
	workers -= 10
	munitionsProducer (2) += 1
    end if
    clicks += 1
end munitionsProducerButton2_handle
procedure munitionsProducerButton3_handle
    if money >= 1000000 and workers >= 1000 then
	money -= 1000000
	workers -= 1000
	munitionsProducer (3) += 1
    end if
    clicks += 1
end munitionsProducerButton3_handle

procedure moneyProducerButton1_handle
    if munitions >= 10 and weapons >= 10 and workers >= 1 then
	munitions -= 10
	weapons -= 10
	workers -= 1
	moneyProducer (1) += 1
    end if
    clicks += 1
end moneyProducerButton1_handle
procedure moneyProducerButton2_handle
    if munitions >= 10000 and weapons >= 100 and workers >= 10 then
	munitions -= 10000
	weapons -= 100
	workers -= 10
	moneyProducer (2) += 1
    end if
    clicks += 1
end moneyProducerButton2_handle
procedure moneyProducerButton3_handle
    if munitions >= 1000000 and weapons >= 10000 and workers >= 1000 then
	munitions -= 1000000
	weapons -= 10000
	workers -= 1000
	moneyProducer (3) += 1
    end if
    clicks += 1
end moneyProducerButton3_handle

procedure workersProducerButton1_handle
    if money >= 100 and workers >= 1 then
	money -= 100
	workers -= 1
	workersProducer (1) += 1
    end if
    clicks += 1
end workersProducerButton1_handle
procedure workersProducerButton2_handle
    if money >= 10000 and workers >= 10 then
	money -= 10000
	workers -= 10
	workersProducer (2) += 1
    end if
    clicks += 1
end workersProducerButton2_handle
procedure workersProducerButton3_handle
    if money >= 10000000 and workers >= 100 then
	money -= 10000000
	workers -= 100
	workersProducer (3) += 1
    end if
    clicks += 1
end workersProducerButton3_handle

procedure weaponsProducerButton1_handle
    if munitions >= 100 and money >= 100 and workers >= 1 then
	munitions -= 100
	money -= 100
	workers -= 1
	weaponsProducer (1) += 1
    end if
    clicks += 1
end weaponsProducerButton1_handle
procedure weaponsProducerButton2_handle
    if munitions >= 10000 and money >= 10000 and workers >= 10 then
	munitions -= 10000
	money -= 10000
	workers -= 10
	weaponsProducer (2) += 1
    end if
    clicks += 1
end weaponsProducerButton2_handle
procedure weaponsProducerButton3_handle
    if munitions >= 10000000 and money >= 10000000 and workers >= 1000 then
	munitions -= 10000000
	money -= 10000000
	workers -= 1000
	weaponsProducer (3) += 1
    end if
    clicks += 1
end weaponsProducerButton3_handle

procedure starsProducerButton1_handle
    if money >= 1000 and workers >= 1 then
	money -= 1000
	workers -= 1
	starsProducer (1) += 1
    end if
    clicks += 1
end starsProducerButton1_handle
procedure starsProducerButton2_handle
    if money >= 100000 and workers >= 10 then
	money -= 100000
	workers -= 10
	starsProducer (2) += 1
    end if
    clicks += 1
end starsProducerButton2_handle
procedure starsProducerButton3_handle
    if money >= 10000000 and workers >= 1000 then
	money -= 10000000
	workers -= 1000
	starsProducer (3) += 1
    end if
    clicks += 1
end starsProducerButton3_handle

% options
procedure saveButton_handle
    save (GUI.GetText (saveTextField))
end saveButton_handle
procedure loadButton_handle
    load (GUI.GetText (loadTextField))
end loadButton_handle
procedure saveTextField_handle (input : string)
    save (input)
end saveTextField_handle
procedure loadTextField_handle (input : string)
    load (input)
end loadTextField_handle

% init
procedure initFrame
    % Load Pictures
    for i : 1 .. numOfPictures
	new picture, i
	picture (i) := Pic.FileNew (pictureNames (i))
    end for
    % Create Buttons
    productionButton := GUI.CreateButton (MARGIN, 230, 100,
	"Production", productionButton_handle)
    purchasingButton := GUI.CreateButton (MARGIN, 200, 100,
	"Purchasing", purchasingButton_handle)
    exchangeButton := GUI.CreateButton (MARGIN, 170, 100,
	"Exchange", exchangeButton_handle)
    statisticsButton := GUI.CreateButton (MARGIN, 140, 100,
	"Statistics", statisticsButton_handle)
    researchButton := GUI.CreateButton (MARGIN, 110, 100,
	"Research", researchButton_handle)
    optionsButton := GUI.CreateButton (MARGIN, 80, 100,
	"Options", optionsButton_handle)
    quitButton := GUI.CreateButton (MARGIN, 50, 100,
	"Quit", quitButton_handle)
    % Production Buttons
    clickMunitions := GUI.CreateButton (300, 400, 100,
	"Build Munitions", clickMunitions_handle)
    clickMoney := GUI.CreateButton (300, 350, 100,
	"Petition for Grants", clickMoney_handle)
    clickWorkers := GUI.CreateButton (300, 300, 100,
	"Hire Workers", clickWorkers_handle)
    clickWeapons := GUI.CreateButton (300, 250, 100,
	"Build Weapons", clickWeapons_handle)
    clickStars := GUI.CreateButton (300, 200, 100,
	"Gain Experience", clickStars_handle)
    % Purchasing Buttons
    munitionsProducerButton (1) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN, PURCHASE_BUTTON_HEIGHT, PURCHASE_BUTTON_WIDTH,
	"Munitions Worker", munitionsProducerButton1_handle)
    munitionsProducerButton (2) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART, PURCHASE_BUTTON_WIDTH,
	"Munitions Machine", munitionsProducerButton2_handle)
    munitionsProducerButton (3) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART * 2, PURCHASE_BUTTON_WIDTH,
	"Munitions Plant", munitionsProducerButton3_handle)

    moneyProducerButton (1) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART, PURCHASE_BUTTON_HEIGHT, PURCHASE_BUTTON_WIDTH,
	"Supply Man", moneyProducerButton1_handle)
    moneyProducerButton (2) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART, PURCHASE_BUTTON_WIDTH,
	"Supply Truck", moneyProducerButton2_handle)
    moneyProducerButton (3) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART * 2, PURCHASE_BUTTON_WIDTH,
	"Supply Convoy", moneyProducerButton3_handle)

    workersProducerButton (1) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 2, PURCHASE_BUTTON_HEIGHT, PURCHASE_BUTTON_WIDTH,
	"Recruiter", workersProducerButton1_handle)
    workersProducerButton (2) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 2, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART, PURCHASE_BUTTON_WIDTH,
	"Advertisement", workersProducerButton2_handle)
    workersProducerButton (3) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 2, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART * 2, PURCHASE_BUTTON_WIDTH,
	"Ad Agency", workersProducerButton3_handle)

    weaponsProducerButton (1) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 3, PURCHASE_BUTTON_HEIGHT, PURCHASE_BUTTON_WIDTH,
	"Weapons Worker", weaponsProducerButton1_handle)
    weaponsProducerButton (2) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 3, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART, PURCHASE_BUTTON_WIDTH,
	"Weapons Machine", weaponsProducerButton2_handle)
    weaponsProducerButton (3) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 3, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART * 2, PURCHASE_BUTTON_WIDTH,
	"Weapons Factory", weaponsProducerButton3_handle)

    starsProducerButton (1) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 4, PURCHASE_BUTTON_HEIGHT, PURCHASE_BUTTON_WIDTH,
	"Researcher", starsProducerButton1_handle)
    starsProducerButton (2) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 4, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART, PURCHASE_BUTTON_WIDTH,
	"Library", starsProducerButton2_handle)
    starsProducerButton (3) := GUI.CreateButton (PURCHASE_BUTTON_MARGIN + PURCHASE_BUTTON_APART * 4, PURCHASE_BUTTON_HEIGHT - PURCHASE_BUTTON_HEIGHT_APART * 2, PURCHASE_BUTTON_WIDTH,
	"Laboratory", starsProducerButton3_handle)
    % save buttons
    saveButton := GUI.CreateButton (300, 400, 100,
	"Save", saveButton_handle)
    saveTextField := GUI.CreateTextField (425, 405, 100,
	"save1.txt", saveTextField_handle)
    loadButton := GUI.CreateButton (300, 300, 100,
	"Load", loadButton_handle)
    loadTextField := GUI.CreateTextField (425, 305, 100,
	"save1.txt", saveTextField_handle)

    hideAll
end initFrame
% main program
initFrame

fork drawFrame
loop
    exit when GUI.ProcessEvent
end loop

