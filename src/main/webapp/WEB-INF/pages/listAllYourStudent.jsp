<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="./css/bootstrap.css" rel="stylesheet"></link>
<link rel="stylesheet" media="screen" href="./css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="./js/jquery-3.1.1.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./chart.js/Chart.min.js"></script>
<script src="./css/menu.css"></script>
<title>Student Manager</title>

</head>
<body>

	<form:form method="post" modelAttribute="request">
		<div class="container" style="position: absolute; left: 190px;">
			<div class="row">
				<h1 class="text-center">Manage Users</h1>
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
										<th class="hidden-xs" style="text-align: left;">ID</th>
										<th>Email of Student</th>
										<th>Full Name</th>
										<th>Language</th>
										<th>Education</th>
										<th>Birthday</th>
										<th>TOEFLscore</th>
										<th>softSkill</th>
										<th>Online Test Score</th>
										<th style="text-align: center;"><em class="fa fa-cog"></em></th>
								</thead>
								<tbody>
									<c:forEach items="${students}" var="student">
										<tr>
											<td>${student.idStudent}</td>
											<td>${student.emailOfStudent}</td>
											<td>${student.fullName}</td>
											<td>${student.idProLanguage}</td>
											<td>${student.idEducation}</td>
											<td>${student.dateOfBirth}</td>
											<td>${student.TOEFLScore}</td>
											<td>${student.softSkill}</td>
											<td>${student.onlineTestScore}</td>
											<td>
											<td align="center"><a class="btn btn-danger"><em
													class="fa fa-trash"></em></a></td>
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
		</div>
	</form:form>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>
</body>
</html>