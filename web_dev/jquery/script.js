$(document).ready(function(){
	$("#name").hide();
	$("#hamster").hover(function() {
		$("img").hide();
		$("#name").show();
	},
	function() {
		$("img").show();
		$("#name").hide();
	}
	);
});


