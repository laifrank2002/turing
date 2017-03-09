const ARRAYLIMIT : int := 41
var counter : int := 1
var numbers : int := 0
var m, n : int := 0
var database : array 1 .. ARRAYLIMIT of int
database (1) := 1
database (2) := 8
database (3) := 11
database (4) := 69
database (5) := 88
database (6) := 96
database (7) := 111
database (8) := 181
database (9) := 609
database (10) := 808
database (11) := 818
database (12) := 888
database (13) := 906
database (14) := 1001
database (15) := 1111
database (16) := 1691
database (17) := 1881
database (18) := 1961
database (19) := 6009
database (20) := 6119
database (21) := 6699
database (22) := 6889
database (23) := 6969
database (24) := 8008
database (25) := 8118
database (26) := 8698
database (27) := 8888
database (28) := 8968
database (29) := 9006
database (30) := 9116
database (31) := 9696
database (32) := 9886
database (33) := 9966
database (34) := 10001
database (35) := 10801
database (36) := 11011
database (37) := 11111
database (38) := 11811
database (39) := 16091
database (40) := 16191
database (41) := 16891

get m
get n

loop
    if database (counter) >= m and database (counter) <= n then
	numbers += 1
    end if
    counter += 1
    exit when counter = ARRAYLIMIT
end loop
put numbers
