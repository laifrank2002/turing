const TESTLIMIT : int := 5
var window : int := Window.Open ("graphics:max;max")
var name : string
var testIndex : int := 1
var mark : array 1 .. TESTLIMIT of real
var markoutof : array 1 .. TESTLIMIT of real
var percentage : array 1 .. TESTLIMIT of real
var average : real := 0


loop

   put "mark? " ..
   get mark (testIndex)
   put "Out of? " ..
   get markoutof (testIndex)
   
   percentage (testIndex) := 100 * (mark (testIndex) / markoutof (testIndex))
   put percentage (testIndex) ,"%"
   average += percentage (testIndex)
   testIndex += 1
    
   exit when testIndex > TESTLIMIT

end loop
average /= TESTLIMIT
put "Average :", average ,"%."

