$(function() {
	$("#email").blur(validateEmail);
	$("#email").click(removeEmailError);
	$("#pass").blur(validatePass);
	$("#pass").click(removePassError);
	$("#repass").blur(validateRepass);
	$("#repass").click(removeRepassError);
	$("#name").blur(validateName);
	$("#name").click(removeNameError);
	$("#dateBorn").blur(validateDateBorn);
	$("#dateBorn").click(removeDateBornError);
	$("#toeflscore").blur(validatephone)
	
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
function removeDateBornError() {
	$("#errorDateBorn").html("");
}

function validateEmail() {
	var email = $("#email").val();
	if (email == "")
		$("#errorEmail").html("Bạn không thể để trống dữ liệu này");
	else if (email.indexOf('@') == -1 || email.indexOf('.') == -1)
		$("#errorEmail").html("Email không hợp lệ, thử lại");
	else {
		var urla = "./controller?email=" + email; 
        $.ajax({ url: urla, 
        	type: "GET",
        	dataType: "xml",
        	success:  function(text) {checkExistEmail(text); } 
        	, cache: false }); 
	}
}
function checkExistEmail(text) {
    if ($(text).find('valid').text() == "false") {
    	$("#errorEmail").html("Email này đã có người đăng ký, thử lại");
    }
}
function validatePass() {
	var pass = $("#pass").val();
	if (pass == "")
		$("#errorPass").html("Bạn không thể để trống dữ liệu này");
	else if (pass.lenght < 8)
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
	}
}
function validateDateBorn() {
	if ($("#dateBorn").val() == "") {
		$("#errorDateBorn").html("Bạn không thể để trống dữ liệu này");
	}
}
function validatephone(toeflscore) 
{
    var maintainplus = '';
    var numval = toeflscore.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    toeflscore.value = maintainplus + curphonevar;
    var maintainplus = '';
    toeflscore.focus;
}