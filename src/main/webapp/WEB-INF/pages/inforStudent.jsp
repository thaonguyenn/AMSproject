<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Manager</title>
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
	src="${pageContext.request.contextPath}/styles/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/styles/chart.js/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	type="text/javascript"></script>
<title>Insert title here</title>
<script src="https://use.fontawesome.com/c34fecfbb5.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/menu.css">
<style>
tr:first-child {
	font-weight: bold;
	background-color: #C6C9C4;
}

table {
	font-size: 12px;
}
</style>
</head>
<body>
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
									<li><a href="/listAllStudent"><i
											class="fa fa-user-secret" aria-hidden="true"></i> Send
											Request</a></li>
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
		<div class="container" style="margin-top: 150px">
			<h3 class="text-center">INFORMATION OF STUDENT</h3>
			<!-- Search form -->
			<div class="input-group"
				style="margin-bottom: 10px; width: 300px; margin-left: 800px">
				<input type="text" class="form-control" placeholder="Search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
			<form action="historycontract" method="post">
				<table id="example" class="table table-striped table-bordered"
					style="width: 100%; margin-top: 10px">
					<thead>
						<tr>
							<th>Full Name</th>
							<th>Email</th>
							<th>Education</th>
							<th>Language</th>
							<th>Birthday</th>
							<th>TOEFLscore</th>
							<th>softSkill</th>
							<th>Online Test Score</th>
							<th>Approved by </th>
							<th>Rejected by </th>
						</tr>
					</thead>
					<tbody>
						<c:set var="counter" value="0" />
						<c:forEach items="${students}" var="student">
							<tr>
								<td>${student.fullName}</td>
								<td>${student.account.email}</td>
								<td>${student.education.name}</td>
								<td><c:forEach items="${student.language}" var="language">
												${language.nameofProLanguage}
								</c:forEach></td>
								<td>${student.dateofbirth}</td>
								<td>${student.TOEFLscore}</td>
								<td>${student.softSkill}</td>
								<td>${student.onlineTestScore}</td>
								
								<td>
									<c:forEach items="${listCoachApprove}" var="coachs"  begin="${counter}" end="${counter}">
										<c:forEach items="${coachs}" var="coach">
											${coach.coach.name}<br>
										</c:forEach>
									</c:forEach>
								</td>
								<td>
									<c:forEach items="${listCoachReject}" var="coachs"  begin="${counter}" end="${counter}">
										<c:forEach items="${coachs}" var="coach">
											${coach.coach.name}<br>
										</c:forEach>
									</c:forEach>
								</td>
								</tr>
							 <c:set var="counter" value="${counter+1}" /> 	
						</c:forEach>

						
						












					</tbody>
				</table>

			</form>

		</div>
	</div>
</body>
</html>