<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" type="text/javascript"></script> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/c34fecfbb5.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/css/menu.css"/>
<link rel="stylesheet prefetch" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css"><script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/styles/js/RegisterAccountStudent.js"
	type="text/javascript"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker(
    		
    		);
  } );
  </script>

<style type="text/css">
<!--register-->
.container-register .form-horizontal .form-title{
	background-color: #002080;
	height: 80px;
	margin-top: -22px;
	margin-bottom: 10px;
	color: white;
	font-weight: 600px;
	text-align: center;
}

.container-register {
	margin-top: 150px;
	margin-bottom:30px;
}

.container-register .form-horizontal {
	margin-top: 10px;
	max-width: 500px;
	margin: 0 auto;
	border-radius: 0.3em;
	background-color: #fff;
	border: 2px solid #f0f5f5;
	
}

.container-register .form-horizontal h2 {
	font-family: 'Poppins', sans-serif;
	font-size: 30px;
	font-weight: 600;
	padding-top: 20px;
	color: white;
	text-align: center;
	letter-spacing: 4px;
}

.form-control,.input-group {
	margin-bottom: -6px;
	width: 350px;
	color:black !important;
}



.btn-submit{
background-color: #002080;
color:white;
}
label{
color:#7A7A7A
}
.status{
margin-top:5px;
 color:red;
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
							<img style="width: 120px" alt="" src="./images/admin.ico">
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
	<div class="container-register">
	<form class="form-horizontal" role="form" action="new" method="POST">
			<div class="form-title" style="background-color:#405189;
	height: 80px;
	margin-top: -22px;
	margin-bottom: 10px;
	color: white;
	font-weight: 600px;
	text-align: center;">
				<h2>Register</h2>
			</div>
			<div class="form-group">
				<label for="Name" class="col-sm-3 control-label">Name*: </label>
				<div class="col-sm-9">
					<input type="text" id="name" name="fullName"
						class="form-control">
					<div class="status" id="errorName"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email* : </label>
				<div class="col-sm-9">
					<input type="text" id="email"  name="email"
						class="form-control" name="email">
					<div class="status" id="errorEmail"></div>

				</div>

			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Password* :</label>
				<div class="col-sm-9">
					<input type="password" id="pass"  name="password"
						class="form-control">
					<div class="status" id="errorPass"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Confirm
					password* :</label>
				<div class="col-sm-9">
					<input type="password" id="repass"
						class="form-control"> <br>
					<div class="status" id="errorRepass"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Date
					of birth*:</label>
				<div class="col-sm-3">
				<div class="input-group date" id="datepicker">
					<input type="text" name="date" class="form-control" id="dateBorn"/>
					<span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                   
                  </div>
				</div>
			</div>
			<div class="col-sm-offset-3 col-sm-8 status" id="errorDateBorn"></div>
			 
			<div class="form-group">
				<label class="control-label col-sm-3">Program language* :</label>
				<div class="col-sm-6">
					<div class="row">
						<c:forEach items="${languages}" var="language">
						<div class="col-sm-3">
						
							<label class="checkbox-inline"><input type="checkbox" name="languages" id="planguage"
								value="${language.getIdProLanguage()}">${language.getNameofProLanguage()}</label>
							<div class="status" id="errorplanguage"></div>
						</div>
						</c:forEach>
						
					</div>
				</div>
			</div>
			<!-- /.form-group -->



			<div class="form-group">
				<label for="Programming" class="col-sm-3 control-label">Education *:</label>
				<div class="col-sm-9">
					<select class="form-control input-sm" name="education-id" style="height: 35px ;font-size:14px">
					<c:forEach items="${educations}" var="education">
						<option value="${education.getId()}" id="education">${education.getName()}</option>
				</c:forEach>
				</select>
				<div class="status" id="erroreducation"></div>

				</div>
			</div>

			<div class="form-group">
				<label for="TOEFL score" class="col-sm-3 control-label">TOEFL
					score : </label>
				<div class="col-sm-9">
					<input type="text" id="toeflscore" class="form-control" name="TOEFLscore"
						maxlength="28" onkeyup="validatephone(this);">
				</div>
			</div>

			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Soft
					skills : </label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="2" name="softskill"></textarea>
				</div>
			</div>





			<!-- /.form-group -->

			<div class="form-group">
				<div class="col-sm-offset-7 col-sm-8">
					<button type="submit" class="btn btn-default">Cancel</button>
					<button type="submit" class="btn btn-submit">Submit</button>
				</div>
			</div>
		</form>
	</div>
</div>

</body>
</html>