$(function() {
	$("#emailOfCoach").blur(validateEmail);
	$("#emailOfCoach").click(removeEmailError);
	$("#password").blur(validatePass);
	$("#password").click(removePassError);
	$("#repass").blur(validateRepass);
	$("#repass").click(removeRepassError);
	$("#name").blur(validateName);
	$("#name").click(removeNameError);
	$("#department").blur(validateDepartment);
	$("#department").click(removeDepartmentError);
	$("#telephone").blur(validatePhone);
	$("#telephone").click(removePhoneError);
});

function removeEmailError() {
	$("#errorEmail").html("");
}
function removePassError() {
	$("#errorPass").html("");
}
function removeRepassError() {
	$("#errorRepass").html("");
}
function removeNameError() {
	$("#errorName").html("");
}
function removeDepartmentError() {
	$("#errorDepartment").html("");
}
function removePhoneError() {
	$("#errorPhone").html("");
}
function validateEmail() {
	var email = $("#emailOfCoach").val();
	if (email == "")
		$("#errorEmail").html("Bạn không thể để trống dữ liệu này");
	else if (email.indexOf('@') == -1 || email.indexOf('.') == -1)
		$("#errorEmail").html("Email không hợp lệ, thử lại");
	else {
		var urla = "./controller?email=" + email;
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
function checkExistEmail(text) {
	if ($(text).find('valid').text() == "false") {
		$("#errorEmail").html("Email này đã có người đăng ký, thử lại");
	}
}
function validatePass() {
	var password = $("#password").val();
	if (password == "")
		$("#errorPass").html("Bạn không thể để trống dữ liệu này");

	else if (password.length < 8)
		$("#errorPass").html("Mật khẩu có ít nhất 8 ký tự. Thử lại.");
}
function validateRepass() {
	var repass = $("#repass").val();
	var pass = $("#pass").val();
	if (repass == "")
		$("#errorRepass").html("Bạn không thể để trống dữ liệu này");
	else if (repass != pass)
		$("#errorRepass").html("Mật khẩu không tương ứng. Thử lại.");
}
function validateName() {
	if ($("#name").val() == "") {
		$("#errorName").html("Bạn không thể để trống dữ liệu này");
		$("#errorName").css('color', 'red');
	}
}
function validateDepartment() {
	if ($("#department").val() == "") {
		$("#errorDepartment").html("Bạn không thể để trống dữ liệu này");
		;
	}
}
function validatePhone() {
	var telephone = $("#telephone").val();
	var formatPhone = /^[0-9-+]+$/;
	if (telephone == "")
		$("#errorPhone").html("Bạn không thể để trống dữ liệu này");
	else if (!telephone.match(formatPhone))
		$("#errorPhone").html("Số điện thoại không hợp lệ. Thử lại.");
}
function checkValid() {
	var checked = true;
	var email = $("#emailOfCoach").val();
		if (email == ""){
			$("#errorEmail").html("Bạn không thể để trống dữ liệu này");
			checked = false;
		}
		var password = $("#password").val();
		if (password == ""){
			$("#errorPass").html("Bạn không thể để trống dữ liệu này");
			checked = false;
		}
		if ($("#name").val() == "") {
			$("#errorName").html("Bạn không thể để trống dữ liệu này");
			checked = false;
		}
		if ($("#department").val() == "") {
			$("#errorDepartment").html("Bạn không thể để trống dữ liệu này");
			checked = false;
		}
		if (telephone == ""){
			$("#errorPhone").html("Bạn không thể để trống dữ liệu này");
		}		
		if (checked == true) {
			document.getElementById("add").type = 'submit';
		} 
	

}