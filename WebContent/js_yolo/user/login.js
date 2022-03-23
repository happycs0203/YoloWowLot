$(function() {
	$("#modal_login_btn").click(function() {
		if ($("#login_id_input").val() == "") {
			alert("아이디를 입력해주세요!");
		} else if ($("#login_pass_input").val() == "") {
			alert("비밀번호를 입력해주세요!");
		} else {
			$("#login_frm").submit();
		}
	});
});