var count : int := 0
loop
    var random : int
    count += 1
    randint(random,1,100)
    exit when random >= 90
end loop

put count
