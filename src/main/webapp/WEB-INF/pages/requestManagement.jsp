<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request management</title>
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
<style type="text/css">
#menu ul {
	background: none;
	width: 237px;
	padding: 0;
	list-style-type: none;
	text-align: left;
}

#menu li {
	width: auto;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px solid #e8e8e8;
	padding: 0 2em;
}

#menu li a {
	text-decoration: none;
	color: #262729;
	font-weight: bold;
	display: block;
}

#menu li:hover {
	background: #CDE2CD;
}

.panel-table .panel-body {
	padding: 0;
}

.panel-table .panel-body .table-bordered {
	border-style: none;
	margin: 0;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type {
	text-align: center;
	width: 100px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:last-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:last-of-type {
	border-right: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:first-of-type {
	border-left: 0px;
}

.panel-table .panel-body .table-bordered>tbody>tr:first-of-type>td {
	border-bottom: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr:first-of-type>th {
	border-top: 0px;
}

.panel-table .panel-footer .pagination {
	margin: 0;
}

.panel-table .panel-footer .col {
	line-height: 34px;
	height: 34px;
}

.panel-table .panel-heading .col h3 {
	line-height: 30px;
	height: 30px;
}

.panel-table .panel-body .table-bordered>tbody>tr>td {
	line-height: 34px;
}
</style>
</head>
<body style="font-family: 'Raleway', sans-serif;">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">
					<li style="font-size: 15px; top: -25px; left: -30px;"><a
						href="./index.html"><img alt="" src="./images/alogo.png"
							style="width: 200px;"></a></li>
					<br>

				</ul>
				<img alt="" src="<c:url value ="/styles/images/colum.gif"/> "
					style="position: absolute; top: 82px; left: -13px;">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><img alt=""
							src="<c:url value ="/styles/images/admin.ico"/>"
							style="border-radius: 50px; width: 50px; height: 50px; position: absolute; left: -30px;"></a></li>
					<li
						style="font-size: 15px; position: absolute; top: 20px; left: 1170px;"><a
						href="http://hcidesigners04.azurewebsites.net/project/Home.html">Website</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="col-sm-3"
		style="position: absolute; top: 82px; left: -20px;">
		<div id="menu">
			<ul>
				<li><a href="./Users.html">Management Coach</a></li>
				<li><a href="./Customers.html">Management Student</a></li>
				<li><a href="./Data.html">Management Contract</a></li>
				<li><a href="./Partner.html">Management Certificate</a></li>
				<li><a href="./Partner.html">Management Request</a></li>

			</ul>
		</div>
	</div>

	<div class="col-sm-9"
		style="position: absolute; top: 85px; left: 225px; width: 85%;">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="./index.html">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Request</li>
			</ol>
		</nav>
	</div>

	<div class="container" style="position: absolute; left: 190px;">
		<div class="row">
			<h1 class="text-center">Manage Request</h1>
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
									<th>Name Request</th>
									<th>Name Coach</th>
									<th>Name Student</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requests}" var="request">
									<tr>
										<td>${request.idRequest}</td>
										<td>${request.typeOfRequest}</td>
										<td>${request.coach.name}</td>
										<td>${request.student.fullName}</td>


										<td align="center"><button type="submit"
												class="btn btn-primary" 
												onclick="window.location.href = '<c:url value='/CreateContract?idRequest=${request.idRequest}'/>'">Create
												Contract</button></td>
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
									<li><a href="#">�</a></li>
									<li><a href="#">�</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer
		style="background-color: black; position: absolute; left: 238px; top: 677px; color: white;"
		class="col-sm-10">
		<b>ABC company (2017)</b>
		<p style="text-align: right;">Design by group 8 ...
	</footer>
</body>
</html>