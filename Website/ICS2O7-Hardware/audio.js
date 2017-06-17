var theme = document.getElementById("theme");
var playing = false;

function audioInterface() {
	if (playing == false) {
		playing = true;
		theme.play();
	}
	else if (playing == true) {
		playing = false;
		theme.pause();
	}
}