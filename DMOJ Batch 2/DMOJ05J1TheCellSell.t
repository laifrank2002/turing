var planA, planB : real
var dm, em, wm : real
get dm
get em
get wm

%PlanA
if dm > 100 then
    planA := (dm-100)*0.25 + em * 0.15 + wm * 0.20
else
    planA := em * 0.15 + wm * 0.20
end if

%PlanB
if dm > 250 then
    planB := (dm-250)*0.45 + em * 0.35 + wm * 0.25
else
    planB := em * 0.35 + wm * 0.25
end if

planA := (round(planA * 100))/100
planB := (round(planB * 100))/100


put "Plan A costs ",planA
put "Plan B costs ",planB


if planA = planB then
    put "Plan A and B are the same price."
end if

if planB > planA then
    put "Plan A is cheapest."
elsif planA > planB then
    put "Plan B is cheapest."
end if
