$(document).ready(function(){
	$("#name").hide();
	$("#hamster").hover(function() {
		$("img").toggle(100);
		$("#name").toggle(100);
	});	
});


