
var firstNAME, middleNAME, lastNAME, streetADDRESS, cityADDRESS, provinceADDRESS, postalCODE : string
%Put Module
put "What is your first name? " ..
get firstNAME:*
put "Any middle names? " ..
get middleNAME:*
put "Family name? " ..
get lastNAME:*
put "Where do you live?(Street Address) " ..
get streetADDRESS:*
put "Which city?" ..
get cityADDRESS:*
put "Province?" ..
get provinceADDRESS:*
put "Finally, what's your postal code? " ..
get postalCODE:*

%Text Module
put firstNAME, ", ", middleNAME, ", ", lastNAME, " lives at ", 
streetADDRESS, ", ", cityADDRESS, ", ", provinceADDRESS, ", ", postalCODE, "."
