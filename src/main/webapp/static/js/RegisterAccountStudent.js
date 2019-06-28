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
		$("#errorEmail").html("Please input email");
	else if (email.indexOf('@') == -1 || email.indexOf('.') == -1)
		$("#errorEmail").html("Email is invalid .Try again");
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
    	$("#errorEmail").html("Email is existed .Try again");
    }
}
function validatePass() {
	var pass = $("#pass").val();
	if (pass == "")
		$("#errorPass").html("Please input password");
	else if (pass.lenght < 8)
		$("#errorPass").html("Password have 8 characters");
}
function validateRepass() {
	var repass = $("#repass").val();
	var pass = $("#pass").val();
	if (repass == "")
		$("#errorRepass").html("Please input confirm password");
	else if (repass != pass)
		$("#errorRepass").html("The confirm password does not match.Try again.");
}
function validateName() {
	if ($("#name").val() == "") {
		$("#errorName").html("Please input name");
	}
}
function validateDateBorn() {
	if ($("#dateBorn").val() == "") {
		$("#errorDateBorn").html("Please input date of birth");
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