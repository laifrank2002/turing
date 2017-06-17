% Coin Shooter 0.11
/*
 Changelog
 0.11
 Physics
 Character
 Movement
 0.01
 Initialized
 */
% Imports
import GUI
% Consts
const ENEMIES_PER_LEVEL := 5
const ENEMIES_HEALTH := 100
const MAX_LIFE := 100
% Config
const WINDOW_X := 640
const WINDOW_Y := 480
const WINDOW_TITLE := "Coin Shooter"
const winIDArgs := "position:0;0,graphics:" + intstr (WINDOW_X) + ";" + intstr (WINDOW_Y) + ",title:" + WINDOW_TITLE
const winID := Window.Open (winIDArgs)
% Fonts
const headerFont := Font.New ("serif:24")
const normalFont := Font.New ("serif:12")
% Frame Delay
const FRAME_DELAY := 10
const SHOOT_DELAY := 100
const SPAWN_DELAY := 1000
% Bottom Bar
const HEIGHT := 100
% Sprite
const SPRITE_X_MAX : int := 500
% Key Press
var chars : array char of boolean
% Button
var quitButton : int
var saveButton : int
var highButton : int

% Stats
var level : int := 1
var score : int := 0
var life : int := 100
% Misc

% Main Character
var spriteX : int := 50
var spriteY : int := HEIGHT
var spirteDist : int := 0

% Bullet
var bulletX : flexible array 1 .. 0 of int
var bulletY : flexible array 1 .. 0 of int
var bullets : int := 0
var EXIT : boolean := false
var bsc : int := 0
% Enemies
type enemy :
    record
	onscreen : boolean
	alive : boolean
	x : int
	health : int
    end record

var enemiesObject : flexible array 1 .. 0 of enemy
var enemies : int := 0
var onscreenEnemies : int := 0


% Images
var coin : int := Pic.FileNew ("rsz_coin.jpg")
var mainSprite : int := Pic.FileNew ("mainChar.bmp")
var enemySprite : int := Pic.FileNew ("enemy.bmp")
% Sprites



% Procedures



% Constance Update
procedure reset_Screen
    cls

    % UI Elements
    Draw.FillBox (0, 0, maxx, HEIGHT, grey)

    % Stats
    Font.Draw ("Bullets : " + intstr (bullets), 50, 50, normalFont, black)
    Font.Draw ("Life : " + intstr (life), 150, 50, normalFont, black)
    Font.Draw ("Level : " + intstr (level), 250, 50, normalFont, black)
    Font.Draw ("Score : " + intstr (score), 350, 50, normalFont, black)
    Font.Draw ("Enemies : " + intstr (enemies), 450, 50, normalFont, black)
    % Character
    Pic.Draw (mainSprite, spriteX, spriteY, picMerge)
    % Legacy Draw.FillBox (spriteX, spriteY, spriteX + 15, spriteY + 25, black)

    % Enemies
    for i : 1 .. enemies
	if enemiesObject (i).alive then
	    Pic.Draw (enemySprite, enemiesObject (i).x, HEIGHT, picMerge)

	    % Legacy Draw.FillBox (enemiesObject (i).x, HEIGHT, enemiesObject (i).x + 15, HEIGHT + 25, red)
	    % health box
	    Draw.FillBox (enemiesObject (i).x, HEIGHT + 30, enemiesObject (i).x + (enemiesObject (i).health div 6), HEIGHT + 35, green)
	end if
    end for
    % Bullets
    for i : 1 .. bsc
	Pic.Draw (coin, bulletX (i), bulletY (i), picMerge)
    end for
    GUI.Refresh
end reset_Screen
% Button Handler

% Value Engine
procedure Gravity
    % Reseter
    onscreenEnemies := 0
    % Jump
    if spriteY > HEIGHT then
	spriteY -= 2
    end if
    % Shoot
    for i : 1 .. bullets
	bulletX (i) += 5
    end for
    % Enemies
    for i : 1 .. enemies
	enemiesObject (i).x -= 3
    end for
    % Check Enemies
    for i : 1 .. enemies
	if enemiesObject (i).x > 0 then
	    onscreenEnemies += 1
	    enemiesObject (i).onscreen := true

	    for b : 1 .. bullets
		% Collision Engine
		if enemiesObject (i).x > bulletX (b) and enemiesObject (i).x < bulletX (b) + 10 then
		    if bulletY (b) < HEIGHT + 25 and bulletY (b) > HEIGHT then
			enemiesObject (i).health -= 5
			bulletX (b) := maxx + 10
		    end if
		end if
	    end for
	    if enemiesObject (i).x > spriteX and enemiesObject (i).x < spriteX + 25 then
		if spriteY < HEIGHT + 25 and spriteY > HEIGHT - 1 then
		    life -= 1
		end if
	    end if
	    % Health Checker
	    if enemiesObject (i).health < 0 then
		enemiesObject (i).alive := false
		enemiesObject (i).x := -100
		score += 1
	    end if
	else
	    if enemiesObject (i).alive = true then
		enemiesObject (i).x := maxx
	    end if
	end if
    end for


    % Reset
    if onscreenEnemies = 0 then
	enemies := 0
	new enemiesObject, enemies
    end if

end Gravity

% Key Handler
procedure Move
    loop
	Input.KeyDown (chars)
	%
	if chars (KEY_LEFT_ARROW) then
	    if spriteX > 50 then
		delay (FRAME_DELAY)
		spriteX -= 5
	    end if
	elsif chars (KEY_RIGHT_ARROW) then
	    if spriteX < SPRITE_X_MAX then
		delay (FRAME_DELAY)
		spriteX += 5
	    end if
	end if

	exit when EXIT

    end loop
end Move

procedure Jump
    loop
	if chars (KEY_UP_ARROW) then
	    if spriteY <= HEIGHT then
		for decreasing i : 14 .. 1
		    delay (FRAME_DELAY)
		    spriteY += i
		end for
	    end if
	end if
	exit when EXIT
    end loop
end Jump
% Shoot coins
procedure Shoot
    loop
	if chars (' ') then
	    bullets += 1
	    new bulletX, bullets
	    new bulletY, bullets
	    bulletX (bullets) := spriteX + 15
	    bulletY (bullets) := spriteY + 15
	    bsc += 1
	    delay (SHOOT_DELAY)
	end if
	exit when EXIT
    end loop
end Shoot
% Spawns Enemies
procedure Spawn
    for i : 1 .. ENEMIES_PER_LEVEL
	delay (SPAWN_DELAY)
	enemies += 1
	new enemiesObject, enemies
	enemiesObject (enemies).x := maxx
	enemiesObject (enemies).alive := true
	enemiesObject (enemies).health := ENEMIES_HEALTH
    end for
end Spawn
% Finish Level
% Reset!
procedure reset_bullets
    if bsc > 0 then
	if bulletX (bsc) > maxx then
	    bullets := 0
	    new bulletX, bullets
	    new bulletY, bullets
	    bsc := 0
	end if
    end if
end reset_bullets
% GUI
process handleGUI
    % Init
    quitButton := GUI.CreateButton (10, 10, 100, "QUIT", GUI.Quit)
    % GUI Loop
    loop
	exit when GUI.ProcessEvent
    end loop

    EXIT := true

end handleGUI

process update
    loop
	if Time.Elapsed mod FRAME_DELAY = 0 then
	    reset_Screen
	    if EXIT then
		Window.Close (winID)
		exit
	    else
		View.Update
		Gravity
		reset_bullets
		if life < 0 then
		    put "Game OVER"
		    exit
		end if
	    end if

	end if
    end loop
end update

process handleKey
    Move
end handleKey

process handleJump
    Jump
end handleJump

process handleShoot
    Shoot
end handleShoot

process handleSpawn
    loop
	if enemies < 1 then
	    Spawn
	end if
	exit when EXIT
    end loop
end handleSpawn
% Init
fork handleGUI
fork handleKey
fork update
fork handleJump
fork handleShoot
fork handleSpawn
