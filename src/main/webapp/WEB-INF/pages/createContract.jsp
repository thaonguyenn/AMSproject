<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/listCoach.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/RegisterCoach9.css">
<script
	src="${pageContext.request.contextPath}/styles/js/jquery-3.1.1.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/styles/js/RegisterCoach22.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/styles/js/bootstrap.min.js"
	type="text/javascript"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
						href="./index.html"><img alt=""
							src="<c:url value="/styles/images/alogo.png"/>"
							style="width: 200px;"></a></li>
					<br>

				</ul>
				<img alt="" src="<c:url value="/styles/images/column.gif"/>"
					style="position: absolute; top: 82px; left: -13px;">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><img alt=""
							src="<c:url value="/styles/images/admin.ico"/>"
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

				<li><a href="" style="color: white;">Manage Coach</a></li>
				<li><a href="" style="color: white;">Manage Student</a></li>
				<li><a href="" style="color: white;">Manage Contract</a></li>
				<li><a href="" style="color: white;">Manage Certificate</a></li>
				<li><a href="" style="color: white;">Manage Request</a></li>


			</ul>

		</div>
	</div>

	<div class="col-sm-9"
		style="position: absolute; top: 85px; left: 225px; width: 85%;">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Coach</li>
			</ol>
		</nav>
	</div>

	<div class="container"
		style="position: absolute; left: 450px; width: 50%;">
		<div class="row">
			<h1 class="text-center"
				style="font-family: 'Titillium Web', sans-serif;">Create
				account for Coach</h1>
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">Form information</h3>
							</div>
							<div class="col col-xs-6 text-right"></div>
						</div>
					</div>
					<div class="panel-body" style="height: 450px;">
						<br>

						<form method="post">
							
							<p class="emailOfCoach">Name :</p>

							<input  type="text" class="emailOfCoach"
								value="${request.student.fullName}" />
							<br>
							<br>
							
							<p class="password">* Password :</p>
							<input type="password" class="password"
								id="password" />
							<br>
							<br>
							
							<p class="name">* Full name :</p>
							<input type="text" class="name" id="name" />
							<br>
							<br>
							

							<p class="department">Department :</p>
							<input type="text" class="department"
								id="department" />
							<br>
							<br>
							
							<p class="telephone">Telephone :</p>
							<input type="text" class="telephone"
								id="telephone" />
							<br>
							<br>
						
							<br>
							<input type="button" value="Add new" class="add" id="add" onclick="checkValid()"
								style="left: 240px; margin-top: -10px; position: absolute;">
						</form>
						<button onclick="window.location.href = '<c:url value='/list' />'"
							class="cancel">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>