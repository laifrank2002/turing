var words = 10.00;
var wordspeed;
var inspiration = 1.00;
var money = 0.00;
var paragraph = 100.00;
var chapter = 15.00;
var bookprice = 0.00;
var fans = 10;
var booksSold = 0;
var multiplySequence = 1;
var multiplier = 1;
var autoConvert = false;
var autoConvertText = "You are not hiring an editor"
//TimeFrames
setInterval(draw, 100);
setInterval(idleIncrease, 1000);

//Updates Text
function draw (){
	document.getElementById("wordcount").innerHTML = "You have written " + words + " words";
	document.getElementById("inspiration").innerHTML = "You have " + inspiration + " inspiration";
	document.getElementById("money").innerHTML = "You have " + money + " dollars";
	document.getElementById("paragraph").innerHTML = "You have " + paragraph + " paragraph";
	document.getElementById("chapter").innerHTML = "You have " + chapter + " chapter";
	document.getElementById("bookprice").innerHTML = "Your book costs " + bookprice + " dollars";
	document.getElementById("fans").innerHTML = "You have " + fans + " dedicated fans";
	document.getElementById("autoConvert").innerHTML = autoConvertText;
	document.getElementById("multiply").innerHTML = " x" + multiplier;
	
	//Turns text into true or false
	if (autoConvert === true){
		autoConvertText = "You are hiring an editor!";
	}
	else {
		autoConvertText = "You are not hiring an editor";
	}
}
//The Button of Writing
function increaseWords(){
	words = words + 5.00;
}
//The Button of Poetry
function sellWords(){
	if (words >= 10.00 * multiplier){
		words = words - (10.00 * multiplier);
		money = money + (0.01 * multiplier);
		money = +((money).toFixed(2));
	}
}
//The Button of Inspiration Machine
function increaseInspiration(){
	if (money >= 0.10 * multiplier){
		money = money - (0.10 * multiplier);
		inspiration = inspiration + (0.25 * multiplier);
		money = +((money).toFixed(2));
	}
}
//Write a paragraph
function increaseParagraph(){
	if (words >= 100 * multiplier){
		words = words - (100 * multiplier);
		paragraph = paragraph + (1 * multiplier);
	}
}
//Write a chapter
function increaseChapter(){
	if (paragraph >= 100 * multiplier){
		paragraph = paragraph - (100* multiplier);
		chapter = chapter + (1 * multiplier);
	}
}
//Convert into Book
function writeBook(){
	if (chapter >= 10){
		bookprice = chapter;
		fans = fans + chapter;
		chapter = 0;
		bookprice = +((bookprice).toFixed(2));
	}
}
//Checkbox
function autoConvertCheck() {
	if (autoConvert === true){
		autoConvert = false;
	}
	else {
		autoConvert = true;
	}
}
//x1 x5 x10 x25 x100 x1000 Widget
function buyLots(){
	multiplySequence ++;
	if (multiplySequence == 7) {
		multiplySequence = 1;
	}
	
	if (multiplySequence == 1){
		multiplier = 5;
	}
	if (multiplySequence == 2){
		multiplier = 10;
	}
	if (multiplySequence == 3){
		multiplier = 25;
	}
	if (multiplySequence == 4){
		multiplier = 100;
	}
	if (multiplySequence == 5){
		multiplier = 1000;
	}
	if (multiplySequence == 6){
		multiplier = 1;
	}
	
}
//Slowly makes more words
function idleIncrease (){
	wordspeed = inspiration;
	words = words + inspiration;
	booksSold = booksSold + fans;
	money = money + (fans*bookprice);
	
	
	if (autoConvert === true) {
		increaseParagraph();
		increaseChapter();
	}
}
//Round to two Widget
/*
Number.prototype.round = function(places) {
  return +(Math.round(this + "e+" + places)  + "e-" + places);
}
*/