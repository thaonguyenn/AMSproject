
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Manager</title>
<link href="${pageContext.request.contextPath}/styles/css/bootstrap.css"
	rel="stylesheet"></link>
<script
	src="${pageContext.request.contextPath}/styles/js/jquery-3.1.1.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" media="screen"
	href="${pageContext.request.contextPath}/styles/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/styles/js/jquery-3.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/styles/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/styles/chart.js/Chart.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/c34fecfbb5.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/menu.css">
<style>
tr:first-child {
	font-weight: bold;
	background-color: #C6C9C4;
}
table{
 font-size:12px;
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
									<li class="currency"><a href="#"> Contact us </a></li>
									<li class="currency"><a href="#"> <i
											class="fa fa-sign-in" aria-hidden="true"></i> Sign In
									</a></li>
									<li class="language"><a href="#"> <i
											class="fa fa-user-plus" aria-hidden="true"></i> Register
									</a></li>

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
								<img style="width: 120px" alt=""
									src=<c:url value ="/styles/images/logoAMS.PNG"/>>
							</div>
							<nav class="navbar">
								<ul class="navbar_menu">
									<li><a href="#"><i class="fa fa-file-text"
											aria-hidden="true"></i> List Student</a></li>
									<li><a href="/listAllStudent"><i class="fa fa-user-secret"
											aria-hidden="true"></i> Send Request</a></li>
									<li class="account"><a href="#"> <i
											class="fa fa-history"></i> History <i
											class="fa fa-angle-down"></i>
									</a>
										<ul class="account_selection">
											<li><a href="#">Contract</a></li>
											<li><a href="#">Certificate</a></li>
										</ul></li>
									<li><a href="#"><i class="fa fa-address-book"
											aria-hidden="true"></i> Profile</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>

		</header>
	</div>
	<br><br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container" >
		<form:form method="post" modelAttribute="request">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-default panel-table">
						<div class="panel-heading">
							<div class="row">
								<div class="col col-xs-6">
									<h3 class="panel-title">List of users</h3>
								</div>
								<div class="col col-xs-6 text-right"></div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered table-list">
								<thead>
									<tr>
										
										<th>Email of Student</th>
										<th>Full Name</th>
										<th>Education</th>
										<th>Language</th>
										<th>Birthday</th>
										<th>TOEFLscore</th>
										<th>softSkill</th>
										<th>Online Test Score</th>
										
								</thead>
								<tbody>
									<c:forEach items="${students}" var="student">
										<tr>
											
											<td>${student.account.email}</td>
											<td>${student.fullName}</td>
											<td>${student.education.name}</td>
											<td>
											<c:forEach items="${student.language}" var="language">
												${language.nameofProLanguage}
											</c:forEach>
												</td>
											<td>${student.dateofbirth}</td>
											<td>${student.TOEFLscore}</td>
											<td>${student.softSkill}</td>
											<td>${student.onlineTestScore}</td>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col col-xs-4">Page 1 of 5</div>
								<div class="col col-xs-8">
									<ul class="pagination hidden-xs pull-right">
										<li><a href="./Users.html">1</a></li>
										<li><a href="./Users.html">2</a></li>
										<li><a href="./Users.html">3</a></li>
										<li><a href="./Users.html">4</a></li>
										<li><a href="./Users.html">5</a></li>
									</ul>
									<ul class="pagination visible-xs pull-right">
										<li><a href="#">«</a></li>
										<li><a href="#">»</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form:form>
	</div>

</body>
</html>