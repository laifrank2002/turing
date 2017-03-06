const MININHOUR : int := 60
var min1, min2, hour1, hour2, total1, total2 : int
var fmin, fhour, ftotal : int
get hour1, min1
get hour2, min2
total1 := MININHOUR*hour1 + min1
total2 := MININHOUR*hour2 + min2
ftotal := total2 - total1

fhour := ftotal div MININHOUR
fmin := ftotal mod MININHOUR

put fhour, " ", fmin, " has elapsed!"
