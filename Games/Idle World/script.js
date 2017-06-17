/*
 Standard License Header
 Frank Lai blah blah blah 2017... 
 The code is down there!
*/

// Declarations

// Medals
var bloodResource = 0;
var courageResource = 0;
var valorResource = 0;
var supportResource = 0;
// People
var peopleResource = 2;
var peopleResourceMax = 3;
// Things
var foodResource = 10;
var landResource = 10;
var moneyResource = 0.00;
// Buildings
var farmBuilding = 0;
// Fallen Londonesque Values
var nextBaby = 10;

// Story Progress
var storyProgress = 0;
// Universal
var dialogueText = "You are the king of this small nation. "


setInterval(draw,100);
setInterval(idleUpdate,1000);

// Main Drawing Function
function draw (){
	
	document.getElementById("dialogue").innerHTML = dialogueText;
	// Resources
	document.getElementById("money").innerHTML = roundToString(moneyResource,2) + " coins";
	document.getElementById("food").innerHTML = roundToString(foodResource,1) + " pounds of food";
	document.getElementById("farmer").innerHTML = peopleResource + " / " + peopleResourceMax + " people" ;
	document.getElementById("land").innerHTML = roundToString(landResource,2) + " acres of land";
	document.getElementById("nextBaby").innerHTML = "Next baby in " + nextBaby + " seconds";
	

}

// Updates Values
function idleUpdate (){
	// Food Production
	if (landResource >= peopleResource) {
		foodResource = foodResource + peopleResource;
	} else {
		foodResource = foodResource + landResource;
	}
	// Food Consumption
	foodResource -= peopleResource * 0.5;
	// Next Baby
	if (nextBaby == 0) {
		nextBaby = 10;
		if (peopleResource < peopleResourceMax) {
			peopleResource += 1;
		}
	}
	nextBaby -= 1;
	// Taxes
	moneyResource += 0.01 * peopleResource;
	// Rounding
	moneyResource = roundTo(moneyResource,2);
	landResource = roundTo(landResource,2);
	foodResource = roundTo(foodResource,1);
}

function roundTo (number, decimal){
	var roundedNumber = 0;
	// Error Proofing
	if (number === undefined){
		number = 0;
	}
	if (decimal === undefined){
		decimal = 0;
	}
	// Rounding
	roundedNumber = +((number).toFixed(decimal));
	return roundedNumber;
}

function roundToString (number,decimal){
	var roundedNumber = "";
	// Error Proofing
	if (number === undefined){
		number = 0;
	}
	if (decimal === undefined){
		decimal = 0;
	}
	roundedNumber = (number).toFixed(decimal);
	return roundedNumber
}

