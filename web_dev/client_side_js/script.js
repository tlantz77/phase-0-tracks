console.log("test");

function changeChameleon(event) {
	event.target.src = "parsons_chameleon.jpg";
}

function changeBack(event) {
	event.target.src = "chameleon.png";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("mouseover", changeChameleon);
photo.addEventListener("mouseout", changeBack);



