$(function() {
	$("#emailOfCoach").blur(validateEmailCoachs);
	$("#emailOfCoach").click(removeEmailError);
	$("#emailOfStudent").blur(validateEmailStudent);
	$("#emailOfStudent").click(removeEmailError);

});

function removeEmailError() {
	$("#errorEmail").html("");
}
function validateEmailCoachs() {
	var email = $("#emailOfCoach").val();
	if (email == "")
		$("#errorEmail").html("Bạn không thể để trống dữ liệu này");
	else if (email.indexOf('@') == -1 || email.indexOf('.') == -1)
		$("#errorEmail").html("Email không hợp lệ, thử lại");
	else {
		var urla = "./checkEmailCoach?email=" + email;
		$.ajax({
			url : urla,
			type : "GET",
			dataType : "xml",
			success : function(text) {
				checkExistEmail(text);
			},
			cache : false
		});
	}
}
function validateEmailStudents() {
	var email = $("#emailOfStudent").val();
	if (email == "")
		$("#errorEmail").html("Bạn không thể để trống dữ liệu này");
	else if (email.indexOf('@') == -1 || email.indexOf('.') == -1)
		$("#errorEmail").html("Email không hợp lệ, thử lại");
	else {
		var urla = "./checkEmailStudent?email=" + email;
		$.ajax({
			url : urla,
			type : "GET",
			dataType : "xml",
			success : function(text) {
				checkExistEmail(text);
			},
			cache : false
		});
	}
}
function validateEmailStudent() {
	var email = $("#emailOfStudent").val();
	
		var urla = "./checkEmailStudentExist?email=" + email;
		$.ajax({
			url : urla,
			type : "GET",
			dataType : "xml",
			success : function(text) {
				checkExistEmailStudent(text);
			},
			cache : false
		});
}
function checkExistEmail(text) {
	if ($(text).find('valid').text() == "false") {
		$("#errorEmail").html("Email này đã có người đăng ký, thử lại");
	}
}
function checkExistEmailStudent(text) {
	if ($(text).find('valid').text() == "false") {
		$("#errorEmail").html("Email không hợp lệ");
	}
}