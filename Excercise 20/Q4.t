import User

const PI := 3.14159
/*
 Directories Proven
 circleA
 circleP
 triA
 triP
 rectA
 rectP

 */

function circleA (radius : real) : real
    var a : real := (radius ** 2) * PI
    result a
end circleA

function circleP (radius : real) : real
    var c : real := (radius * 2) * PI
    result c
end circleP

function triA (base : real, height : real) : real
    var a : real := (base * height) / 2
    result a
end triA

function triP (s1 : real, s2 : real, s3 : real) : real
    var p : real := s1 + s2 + s3
    result p
end triP

function rectA (s1 : real, s2 : real) : real
    var a : real := s1 * s2
    result a
end rectA

function rectP (s1 : real, s2 : real) : real
    var p : real := s1 + s1 + s2 + s2
    result p
end rectP

procedure greet
    loop
	var input : real
	var program : int
	put "Welcome to the toastmaster 3000. To start, enter a program."
	put "1.Circle Area"
	put "2.Circle Circumferance(radius)"
	put "3.Triangle Area"
	put "4.Triangle Perimeter"
	put "5.Rectangle Area"
	put "6.Rectangle Perimeter"
	program := User.IntInput ()
	case program of
	    label 1 :
		input := User.RealInput ()
		put circleA(input)
	    label 2 :
		input := User.RealInput ()
		put circleP(input)
	    label 3 :
		var b : real := User.RealInput ()
		var h : real := User.RealInput ()
		put triA (b,h)
	    label 4 :
		var s1 : real := User.RealInput ()
		var s2 : real := User.RealInput ()
		var s3 : real := User.RealInput ()
		put triP (s1,s2,s3)
	    label 5 :
		var s1 : real := User.RealInput ()
		var s2 : real := User.RealInput ()
		put rectA (s1,s2)
	    label 6 :
		var s1 : real := User.RealInput ()
		var s2 : real := User.RealInput ()
		put rectP (s1,s2)
	    label 7 :
		put "Coming soon!"
	    label :
		put "Exceded limit."
	end case
    end loop
end greet

greet
