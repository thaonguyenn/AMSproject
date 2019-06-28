<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" type="text/javascript"></script> 
<script src="https://use.fontawesome.com/c34fecfbb5.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/css/question.css">
<style type="text/css">
	@charset "utf-8";


@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,900');


*
{
	margin: 0;
	padding: 0;
}
body
{
	font-family: 'Poppins', sans-serif;
	font-size: 14px;
	line-height: 23px;
	font-weight: 400;
	background: #FFFFFF;
	color: #1e1e27;
}
div
{
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
ul
{
	list-style: none;
	margin-bottom: 0px;
}
p
{
	font-family: 'Poppins', sans-serif;
	font-size: 14px;
	line-height: 1.7;
	font-weight: 500;
	color: #989898;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
p a
{
	display: inline;
	position: relative;
	color: inherit;
	border-bottom: solid 2px #fde0db;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
a, a:hover, a:visited, a:active, a:link
{
	text-decoration: none;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
p a:active
{
	position: relative;
	color: #FF6347;
}
p a:hover
{
	color: #FF6347;
	background: #fde0db;
}
p a:hover::after
{
	opacity: 0.2;
}
::selection
{
	background: #fde0db;
	color: #FF6347;
}
p::selection
{
	background: #fde0db;
}
h1{font-size: 72px;}
h2{font-size: 40px;}
h3{font-size: 28px;}
h4{font-size: 24px;}
h5{font-size: 16px;}
h6{font-size: 14px;}
h1, h2, h3, h4, h5, h6
{
	font-family: 'Poppins', sans-serif;
	color: #282828;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
	text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
h1::selection,
h2::selection,
h3::selection,
h4::selection,
h5::selection,
h6::selection
{

}
::-webkit-input-placeholder
{
	font-size: 16px !important;
	font-weight: 500;
	color: #777777 !important;
}
:-moz-placeholder /* older Firefox*/
{
	font-size: 16px !important;
	font-weight: 500;
	color: #777777 !important;
}
::-moz-placeholder /* Firefox 19+ */
{
	font-size: 16px !important;
	font-weight: 500;
	color: #777777 !important;
}
:-ms-input-placeholder
{
	font-size: 16px !important;
	font-weight: 500;
	color: #777777 !important;
}
::input-placeholder
{
	font-size: 16px !important;
	font-weight: 500;
	color: #777777 !important;
}
.form-control
{
	color: #db5246;
}
section
{
	display: block;
	position: relative;
	box-sizing: border-box;
}
.clear
{
	clear: both;
}
.clearfix::before, .clearfix::after
{
	content: "";
	display: table;
}
.clearfix::after
{
	clear: both;
}
.clearfix
{
	zoom: 1;
}
.float_left
{
	float: left;
}
.float_right
{
	float: right;
}
.trans_200
{
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.trans_300
{
	-webkit-transition: all 300ms ease;
	-moz-transition: all 300ms ease;
	-ms-transition: all 300ms ease;
	-o-transition: all 300ms ease;
	transition: all 300ms ease;
}
.trans_400
{
	-webkit-transition: all 400ms ease;
	-moz-transition: all 400ms ease;
	-ms-transition: all 400ms ease;
	-o-transition: all 400ms ease;
	transition: all 400ms ease;
}
.trans_500
{
	-webkit-transition: all 500ms ease;
	-moz-transition: all 500ms ease;
	-ms-transition: all 500ms ease;
	-o-transition: all 500ms ease;
	transition: all 500ms ease;
}
.fill_height
{
	height: 100%;
}
.super_container
{
	width: 100%;
	overflow: hidden;
}
.header
{
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background: #FFFFFF;
	z-index: 10;
}
.top_nav
{
	width: 100%;
	height: 50px;
	background: #405189;
}
.top_nav_left
{
	height: 50px;
	line-height: 50px;
	font-size: 13px;
	color: #b5aec4;
	text-transform: uppercase;
}

.currency
{
	display: inline-block;
	position: relative;
	min-width: 50px;
	border-right: solid 1px #223060;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	vertical-align: middle;
	background: #405189;
}
.currency > a
{
	display: block;
	color: #b5aec4;
	font-weight: 400;
	height: 50px;
	line-height: 50px;
	font-size: 13px;
}
.currency > a > i
{
	margin-left: 8px;
}
.currency:hover .currency_selection
{
	visibility: visible;
	opacity: 1;
	top: 100%;
}
.currency_selection
{
	display: block;
	position: absolute;
	right: 0;
	top: 120%;
	margin: 0;
	width: 100%;
	background: #FFFFFF;
	visibility: hidden;
	opacity: 0;
	z-index: 1;
	box-shadow: 0 0 25px rgba(63, 78, 100, 0.15);
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.currency_selection li
{
	padding-left: 10px;
	padding-right: 10px;
	line-height: 50px;
}
.currency_selection li a
{
	display: block;
	color: #232530;
	border-bottom: solid 1px #dddddd;
	font-size: 13px;
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.currency_selection li a:hover
{
	color: #b5aec4;
}
.currency_selection li:last-child a
{
	border-bottom: none;
}

.language
{
	display: inline-block;
	position: relative;
	min-width: 50px;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	vertical-align: middle;
	background: #405189;
}
.language > a
{
	display: block;
	color: #b5aec4;
	font-weight: 400;
	height: 50px;
	line-height: 50px;
	font-size: 13px;
}
.language > a > i
{
	margin-left: 8px;
}
.language:hover .language_selection
{
	visibility: visible;
	opacity: 1;
	top: 100%;
}
.language_selection
{
	display: block;
	position: absolute;
	right: 0;
	top: 120%;
	margin: 0;
	width: 100%;
	background: #FFFFFF;
	visibility: hidden;
	opacity: 0;
	z-index: 1;
	box-shadow: 0 0 25px rgba(63, 78, 100, 0.15);
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.language_selection li
{
	padding-left: 10px;
	padding-right: 10px;
	line-height: 50px;
}
.language_selection li a
{
	display: block;
	color: #232530;
	border-bottom: solid 1px #dddddd;
	font-size: 13px;
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.language_selection li a:hover
{
	color: #b5aec4;
}
.language_selection li:last-child a
{
	border-bottom: none;
}

.account
{
	display: inline-block;
	position: relative;
	min-width: 30px;
	padding-left: 20px;
	text-align: center;
	vertical-align: middle;
}
.account > a
{
	display: block;
	color: #b5aec4;
	font-weight: 400;
	height: 50px;
	line-height: 0px;
	font-size: 13px;
}
.account > a > i
{
	margin-left: 8px;
}
.account:hover .account_selection
{
	visibility: visible;
	opacity: 1;
	top: 100%;
}
.account_selection
{
	display: block;
	position: absolute;
	right: 0;
	top: 120%;
	margin: 0;
	width: 100%;
	background: #FFFFFF;
	visibility: hidden;
	opacity: 0;
	z-index: 1;
	box-shadow: 0 0 25px rgba(63, 78, 100, 0.15);
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.account_selection li
{
	padding-left: 10px;
	padding-right: 10px;
	line-height: 50px;
}
.account_selection li a
{
	display: block;
	color: #232530;
	border-bottom: solid 1px #dddddd;
	font-size: 14px;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-ms-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}
.account_selection li a:hover
{
	color: #b5aec4;
}
.account_selection li:last-child a
{
	border-bottom: none;
}
.account_selection li a i
{
	margin-right: 10px;
}

.main_nav_container
{
	width: 100%;
	background: #FFFFFF;
	box-shadow: 0 0 16px rgba(0, 0, 0, 0.15);
}
.navbar
{
	width: auto;
	height: 50px;
	float: right;
	padding-left: 0px;
	padding-right: 0px;
}
.navbar_menu li
{
	display: inline-block;
}
.navbar_menu li a
{
	display: block;
	color: #405189;
	font-size: 13px;
	font-weight: 500;
	text-transform: uppercase;
	padding: 20px;
	-webkit-transition: color 0.3s ease;
	-moz-transition: color 0.3s ease;
	-ms-transition: color 0.3s ease;
	-o-transition: color 0.3s ease;
	transition: color 0.3s ease;
}
.navbar_menu li a:hover
{
	color: #b5aec4;
}
.navbar_user
{
	margin-left: 37px;
}
.navbar_user li
{
	display: inline-block;
	text-align: center;
}
.navbar_user li a
{
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	position: relative;
	width: 40px;
	height: 40px;
	color: #1e1e27;
	-webkit-transition: color 0.3s ease;
	-moz-transition: color 0.3s ease;
	-ms-transition: color 0.3s ease;
	-o-transition: color 0.3s ease;
	transition: color 0.3s ease;
}
.navbar_user li a:hover
{
	color: #b5aec4;
}
.checkout a
{
	background: #eceff6;
	border-radius: 50%;
}
.checkout_items
{
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	position: absolute;
	top: -9px;
	left: 22px;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	background: #fe4c50;
	font-size: 12px;
	color: #FFFFFF;
}

.hamburger_container
{
	display: none;
	margin-left: 40px;
}
.hamburger_container i
{
	font-size: 24px;
	color: #1e1e27;
	-webkit-transition: all 300ms ease;
	-moz-transition: all 300ms ease;
	-ms-transition: all 300ms ease;
	-o-transition: all 300ms ease;
	transition: all 300ms ease;
}
.hamburger_container:hover i
{
	color: #b5aec4;
}
.hamburger_menu
{
	position: fixed;
	top: 0;
	right: -400px;
	width: 400px;
	height: 100vh;
	background: rgba(255,255,255,0.95);
	z-index: 10;
	-webkit-transition: all 300ms ease;
	-moz-transition: all 300ms ease;
	-ms-transition: all 300ms ease;
	-o-transition: all 300ms ease;
	transition: all 300ms ease;
}
.hamburger_menu.active
{
	right: 0;
}
.fs_menu_overlay
{
	position: fixed;
	top: 0;
	left: 0;
	width: 100vw;
	height: 100vh;
	z-index: 9;
	background: rgba(255,255,255,0);
	pointer-events: none;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.hamburger_close
{
	position: absolute;
	top: 26px;
	right: 10px;
	padding: 10px;
	z-index: 1;
}
.hamburger_close i
{
	font-size: 24px;
	color: #1e1e27;
	-webkit-transition: all 300ms ease;
	-moz-transition: all 300ms ease;
	-ms-transition: all 300ms ease;
	-o-transition: all 300ms ease;
	transition: all 300ms ease;
}
.hamburger_close:hover i
{
	color: #b5aec4;
}
.hamburger_menu_content
{
	padding-top: 100px;
	width: 100%;
	height: 100%;
	padding-right: 20px;
}
.menu_item
{
	display: block;
	position: relative;
	border-bottom: solid 1px #b5aec4;
	vertical-align: middle;
}
.menu_item > a
{
	display: block;
	color: #1e1e27;
	font-weight: 500;
	height: 50px;
	line-height: 50px;
	font-size: 14px;
	text-transform: uppercase;
}
.menu_item > a:hover
{
	color: #b5aec4;
}
.menu_item > a > i
{
	margin-left: 8px;
}
.menu_item.active .menu_selection
{
	display: block;
	visibility: visible;
	opacity: 1;
}
.menu_selection
{
	margin: 0;
	width: 100%;
	max-height: 0;
	overflow: hidden;
	z-index: 1;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-ms-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}
.menu_selection li
{
	padding-left: 10px;
	padding-right: 10px;
	line-height: 50px;
}
.menu_selection li a
{
	display: block;
	color: #232530;
	border-bottom: solid 1px #dddddd;
	font-size: 13px;
	text-transform: uppercase;
	-webkit-transition: opacity 0.3s ease;
	-moz-transition: opacity 0.3s ease;
	-ms-transition: opacity 0.3s ease;
	-o-transition: opacity 0.3s ease;
	transition: all 0.3s ease;
}
.menu_selection li a i
{
	margin-right: 5px;
}
.menu_selection li a:hover
{
	color: #b5aec4;
}
.menu_selection li:last-child a
{
	border-bottom: none;
}

.logo_container
{
	position: absolute;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	left: 15px;
}
.logo_container a
{
	font-size: 24px;
	color: #1e1e27;
	font-weight: 700;
	text-transform: uppercase;
}
.logo_container a span
{
	color: #fe4c50;
}

progress {
  display: block; /* default: inline-block */
  width: 300px;
  margin: 2em auto;
  padding: 4px;
  border: 0 none;
  background: #005392;
  border-radius: 14px;
  box-shadow: inset 0px 1px 1px rgba(0,0,0,0.5), 0px 1px 0px rgba(255,255,255,0.2);
}
progress::-moz-progress-bar {
  border-radius: 12px;
  background: #FFF;
  box-shadow: inset 0 -2px 4px rgba(0,0,0,0.4), 0 2px 5px 0px rgba(0,0,0,0.3);
  
}
/* webkit */
@media screen and (-webkit-min-device-pixel-ratio:0) {
  progress {
    height: 25px;
  }
}
progress::-webkit-progress-bar {
    background: transparent;
}  
progress::-webkit-progress-value {  
  border-radius: 12px;
  background: #f19f02;
  box-shadow: inset 0 -2px 4px rgba(0,0,0,0.4), 0 2px 5px 0px rgba(0,0,0,0.3); 
} 
/* environnement styles */

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
<title>Online Test</title>
</head>
<script type="text/javascript">
function initTime() {
setInterval(() => {
	var urla = "./calculateCountDown?idsession=${idSession}"; 
    $.ajax({ url: urla, 
    	type: "GET",
    	dataType: "xml",
    	success:  function(text) {showTime(text); } 
    	, cache: false }); 
    
    var urlb = "./loadSelectedQuestion?idsession=${idSession}"; 
    $.ajax({ url: urlb, 
    	type: "GET",
    	dataType: "xml",
    	success:  function(text) {showSelectedQuestion(text); } 
    	, cache: false }); 
}, 1000);
}
function showSelectedQuestion(text) {
	var i = 1;
	$(text).find('item').each(function(){
    	var checked = $(this).find('checked').text();
    	if(checked == "false"){
    		document.getElementById("item"+i).innerHTML = "not yet";
    	} else {
    		document.getElementById("item"+i).innerHTML = "saved";
    	}
    	i++;
    });
}
function showTime(text) {
	var timer = document.getElementById("timer");
	var progressTime = document.getElementById("progressTime");
	var time = $(text).find('time').text();
	if(time == '0:0'){
		timer.value = time;
		//set time out
		window.location.href = ".calculateScore/?idsession=${idSession}";
	} 
	timer.value = time;
	progressTime.value = time.replace(":", ".");
}
</script>
<script type="text/javascript">
//set answer (if available)
function checkAnswer() {
	//var i;
	var as0 = document.getElementById("as0").value;
	var as1 = document.getElementById("as1").value;
	var as2 = document.getElementById("as2").value;
	var as3 = document.getElementById("as3").value;
	var as4 = document.getElementById("as4").value;
	//for (i = 0; i < list.length; i++) { 
		if (as0 != ""){
			document.getElementById(as0).checked = true;
		}
		if (as1 != ""){
			document.getElementById(as1).checked = true;
		}
		if (as2 != ""){
			document.getElementById(as2).checked = true;
		}
		if (as3 != ""){
			document.getElementById(as3).checked = true;
		}
		if (as4 != ""){
			document.getElementById(as4).checked = true;
		}
	//}
}
</script>
<script type="text/javascript">
function checkIfChooseOption() {
	if (document.getElementById("answer0").checked == true
			|| document.getElementById("answer1").checked == true
			|| document.getElementById("answer2").checked == true
			|| document.getElementById("answer3").checked == true
			|| document.getElementById("answer4").checked == true){
		document.getElementById("myDialog").show();
		document.getElementById("closeWarning").style.display = "block";
	}else{
		document.getElementById("Next").type = 'submit';
	}
}
</script>
<script type="text/javascript">
function closeWarning() {
	document.getElementById('myDialog').close();
	document.getElementById("Next").type = 'submit';
	document.getElementById("closeWarning").style.display = "none";
}
</script>
<!-- <script type="text/javascript">
	var minute = ${minute};
	var second = ${second};
	var redirect = "https://google.com";
	function countDown(){
		var timer = document.getElementById("timer");
		if(minute == 0 && second == 0){
			timer.value = minute+":"+second;
			window.location.href = redirect;
		} else {
		if(second > 0){
			second--;
		}
		else if(second == 0){
			minute--;
			second = 59;
		}
		timer.value = minute+":"+second;
		setTimeout("countDown()", 1000);
		}
	}

	</script>
 -->
<body>
	<div class="super_container">
	<!-- Header -->

	<header class="header trans_300">

		<!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">Apprentice Management System</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">
								<li class="currency">
									<a href="#">
										Contact us
									</a>
								</li>
								<li class="currency">
									<a href="#">
										<i class="fa fa-sign-in" aria-hidden="true"></i> Sign In</a>
								</li>
								<li class="language">
									<a href="#">
										<i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<img style="width: 120px" alt="" src="./images/logoAMS.png">
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="#"><i class="fa fa-file-text" aria-hidden="true"></i> Online Test</a></li>
								<li><a href="#"><i class="fa fa-user-secret" aria-hidden="true"></i> Select Coach</a></li>
								<li class="account">
									<a href="#">
									<i class="fa fa-history"></i>
										History
									<i class="fa fa-angle-down"></i>
									</a>
									<ul class="account_selection">
										<li><a href="#">Contract</a></li>
										<li><a href="#">Certificate</a></li>
									</ul>
								</li>
								<li><a href="#"><i class="fa fa-address-book" aria-hidden="true"></i> Profile</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>
</div>
	<br><br><br><br><br><br>
<div class="container">
<center><h3>Online Test</h3></center>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<form method="POST" accept-charset="utf-8">
	<input id = "timer" name="time" style="border: none; margin-left: 670px"><!-- <script type="text/javascript">countDown();</script> -->
	<progress max="40" id="progressTime" style="margin-top: 0px; margin-left: 425px"></progress>
		
		<input hidden="true" name="idsession" type="text"
			value="${idSession}"> 
		<input hidden="true" name="position" type="text" value="${position}">
		<c:set var="counter" value="0" />
		<c:forEach items="${listSession}" var="session">
		
			<input hidden="true" id="as${counter}" type="text" value="${session.answer}">
			<c:forEach items="${listQuestion}" var="question"  begin="${counter}" end="${counter}">
				<input hidden="true"
					name="idquestion${counter}" type="text" value="${session.idQuestion}">
				<div class="panel">
				<div class="panel-heading" style="background-color: #afc3dc">Q${numberOfQuestion+counter+1}/20 ) ${question.contentQ}</div>
				<input type="radio" name="answer${counter}" id="answer${counter}" checked="checked" hidden="true">
				 <div class="panel-body" style="border: 2px solid #afc3dc">
                <ul class="input-list">
				<c:forEach items="${question.options}" var="option">
				<li>
                        <div class="pure-radiobutton">
					<input class="radio" type="radio" name="answer${counter}" id="${option.contentO}" value="${option.contentO}"><label for="${option.contentO}">${option.contentO}</label>
		            	</div>
		            	</li>  	
            	</c:forEach>
            	</ul>
            	</div>
            	</div>
			</c:forEach>
		 <c:set var="counter" value="${counter+1}" />  
		 
		</c:forEach>
		<div class="col-sm-2"></div>
	<div class="col-sm-8"> 
		<c:choose>
			<c:when test="${disablePrevious}">
				<input class="btn btn-warning" style="margin-left: -135px" type="submit" name = "action" value="Previous" disabled="disabled">
			</c:when>
			<c:otherwise>
				<input class="btn btn-warning" style="margin-left: -135px" type="submit" name = "action" value="Previous">
			</c:otherwise>
		</c:choose>
		</div>
		<div class="col-sm-2">
		<c:choose>
			<c:when test="${disableNext}">
				<input class="btn btn-primary"style="margin-left: 50px" type="button" onclick="checkIfChooseOption()" name = "action" id = "Next" value="Next" onclick="checkIfChooseOption()" disabled="disabled">
				<input class="btn btn-info"style="margin-left: 120px; margin-top: -35px" type="submit" name = "action" value="Finish" >
			</c:when>
			<c:otherwise>
				<input class="btn btn-primary"style="margin-left: 50px" type="button" onclick="checkIfChooseOption()" id = "Next" name = "action" value="Next">
			</c:otherwise>
		</c:choose>
		</div>
	</form>
	<br><br>
	<center>
	<dialog style="margin-left: 300px" id="myDialog">You should choose any option !</dialog>
	<br><br>
	<button style="margin-left: 50px" hidden="true" id = "closeWarning" onclick="closeWarning()">Yes, I understood</button>
	</center>
	<script type="text/javascript">checkAnswer();</script>
	<script type="text/javascript">initTime();</script>
	</div>
	<div class="col-sm-2">
		<table>
	  <tr>
	  <th>Question</th>
	  <th>Option</th>
	  </tr>
	  <tr>
	  <td>1</td>
	  <td><p id="item1"></p></td>
	  </tr>
	  <tr>
	  <td>2</td>
	  <td><p id="item2"></p></td>
	  </tr>
	  <tr>
	  <td>3</td>
	  <td><p id="item3"></p></td>
	  </tr>
	  <tr>
	  <td>4</td>
	  <td><p id="item4"></p></td>
	  </tr>
	  <tr>
	  <td>5</td>
	  <td><p id="item5"></p></td>
	  </tr>
	  <tr>
	  <td>6</td>
	  <td><p id="item6"></p></td>
	  </tr>
	  <tr>
	  <td>7</td>
	  <td><p id="item7"></p></td>
	  </tr>
	  <tr>
	  <td>8</td>
	  <td><p id="item8"></p></td>
	  </tr>
	  <tr>
	  <td>9</td>
	  <td><p id="item9"></p></td>
	  </tr>
	  <tr>
	  <td>10</td>
	  <td><p id="item10"></p></td>
	  </tr>
	   <tr>
	  <td>11</td>
	  <td><p id="item11"></p></td>
	  </tr>
	  <tr>
	  <td>12</td>
	  <td><p id="item12"></p></td>
	  </tr>
	  <tr>
	  <td>13</td>
	  <td><p id="item13"></p></td>
	  </tr>
	  <tr>
	  <td>14</td>
	  <td><p id="item14"></p></td>
	  </tr>
	  <tr>
	  <td>15</td>
	  <td><p id="item15"></p></td>
	  </tr>
	  <tr>
	  <td>16</td>
	  <td><p id="item16"></p></td>
	  </tr>
	  <tr>
	  <td>17</td>
	  <td><p id="item17"></p></td>
	  </tr>
	  <tr>
	  <td>18</td>
	  <td><p id="item18"></p></td>
	  </tr>
	  <tr>
	  <td>19</td>
	  <td><p id="item19"></p></td>
	  </tr>
	  <tr>
	  <td>20</td>
	  <td><p id="item20"></p></td>
	  </tr>
	</table>
	</div>
	<br><br>
</div>
</body>
</html>