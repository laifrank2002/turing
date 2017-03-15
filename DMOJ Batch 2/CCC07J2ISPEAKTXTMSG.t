var input : string
loop
    get input
    case input of
	label "CU" :
	    put "see you"
	label ":-)" :
	    put "I'm happy"
	label ":-(" :
	    put "I'm unhappy"
	label ";-)" :
	    put "wink"
	label ":-P" :
	    put "stick out my tongue"
	label "(~.~)" :
	    put "sleepy"
	label "TA" :
	    put "totally awesome"
	label "CCC" :
	    put "Canadian Computing Competition"
	label "CUZ" :
	    put "because"
	label "TY" :
	    put "thank-you"
	label "YW" :
	    put "you're welcome"
	label "TTYL" :
	    put "talk to you later"
	    exit
	label :
	    put input
    end case
end loop
