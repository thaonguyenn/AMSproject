<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<script src="https://use.fontawesome.com/c34fecfbb5.js"></script>
<script src="${pageContext.request.contextPath}/styles/chart.js/Chart.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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


</style>
</head>
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
	<br><br><br><br><br>
	
</div>
<center><h2 style="color: #FF4500"><b>${score}</b></h2><h4>${message}</h4></center>
 
 <div class="container">
		<div class="col-sm-12">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-default panel-table">
						<div class="panel-heading">
							<div class="row">
								<div class="col col-xs-8">
									<h3 class="panel-title">Result</h3>
								</div>
								<div class="col col-xs-8 text-right"></div>
							</div>
						</div>
						<div class="panel-body">
							<div class="col-sm-6">
								<table class="table">
								  <tr>
								  <th>Description</th>
								  <th>Status</th>
								  </tr>
								  <tr>
								  <td>Total question</td>
								  <td><p>20</p></td>
								  </tr>
								  <tr>
								  <td>Score per question</td>
								  <td><p>5</p></td>
								  </tr>
								  <tr>
								  <td>Total correct answer</td>
								  <td><p>${totalCorrect}</p></td>
								  </tr>
								  <tr>
								  <td>Total wrong answer</td>
								  <td><p>${20-totalCorrect}</p></td>
								  </tr>
								  <tr>
								  <td>Result</td>
								  <td><p>${score} points</p></td>
								  </tr>
								 </table>
							</div>
							<div class="col-sm-6">
								<canvas id="countries" width="420" height="220"></canvas><br><br>
								<center>
								<button type="button" class="btn btn-sm btn-primary btn-create" style="background-color: #FFEA88; border: #FFEA88;"></button><p style="font-size: 10px">Wrong answer</p>
								<button type="button" class="btn btn-sm btn-primary btn-create" style="background-color: #FF8153; border: #FF8153;"></button><p style="font-size: 10px">Correct answer</p>
								</center>
							</div>
							
							<!-- for list question -->
							<c:set var="counter" value="0" />
							<c:forEach items="${questions}" var="question">
							<div class="col-sm-12">
								<div class="col-md-10 col-md-offset-1">
								<div class="panel panel-default panel-table">
								<div class="panel-heading">
									<div class="row">
										<div class="col col-xs-12">
											<h3 class="panel-title">Question ${counter+1} : ${question.contentQ}</h3>
										</div>
										<div class="col col-xs-8 text-right"></div>
									</div>
								</div>
								<div class="panel-body">
									<c:forEach items="${answers}" var="answer"  begin="${counter}" end="${counter}">
									<p>Your Answer : ${answer}</p>
									</c:forEach>
									<c:forEach items="${keys}" var="key"  begin="${counter}" end="${counter}">
									<p style="color: #FF4500">Right Answer : ${key}</p>
									</c:forEach>
								</div>
								</div>
								</div>
							</div>
							<c:set var="counter" value="${counter+1}" />  
							</c:forEach>
							<!--  -->
							
						</div>
							
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
//pie chart data
var pieData = [
    {
    	label: "correct",
        value : ${totalCorrect},
        color : "#FF8153"
    },
    {
    	label: "wrong",
        value : ${20-totalCorrect},
        color : "#FFEA88"
    }
];

// pie chart options
var pieOptions = {
    segmentShowStroke : false,
    animateScale : true,
}

// get pie chart canvas
var countries= document.getElementById("countries").getContext("2d");

// draw pie chart
new Chart(countries).Pie(pieData, pieOptions);
</script>
</body>
</html>