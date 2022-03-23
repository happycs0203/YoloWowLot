$(function() {
	$("#chat_div").hide();
	$("#chat_view").hide();

	$(".msg_btn").click(function() {
		if ($("#chat_div").css("display") == "none") {
			$("#chat_div").attr("style","display:block;");
			$("#chat_div").show();
		} else {
			$("#chat_div").hide();
			$("#chat_list").show();
			$("#chat_view").hide();
		}
	});

	$(".chat_in").click(function() {
		$("#chat_div").show();
		$("#chat_div").attr("style","display:block;");
		$("#chat_list").hide();
		$("#chat_view").show();
	});

});