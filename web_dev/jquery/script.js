$(document).ready(function(){
	$("#name").hide();
	
	$("#hamster1").hover(function(){
		$("#h1").toggle(100);
		$("#name").toggle(100);
	});	

	$("#hamster2").click(function(){
		$("#panel").slideToggle("slow");
	});
});


