<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="${pageContext.request.contextPath}/styles/js/jquery-3.1.1.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/listCoach.css">
<script
	src="${pageContext.request.contextPath}/styles/js/RegisterCoach21.js"
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Detail Student</title>
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
						href="./index.html"><img alt="" src="<c:url value="/styles/images/alogo.png"/>"
							style="width: 200px;"></a></li>
					<br>

				</ul>
				<img alt="" src="<c:url value="/styles/images/column.gif"/>"
					style="position: absolute; top: 82px; left: -13px;">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><img alt="" src="<c:url value="/styles/images/admin.ico"/>"
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

				<li><a href="">Manage Coach</a></li>
				<li><a href="">Manage Student</a></li>
				<li><a href="">Manage Contract</a></li>
				<li><a href="">Manage Certificate</a></li>
				<li><a href="">Manage Request</a></li>


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
			<h1 class="text-center" style="font-family: 'Titillium Web', sans-serif;">Create account for Coach</h1>
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default panel-table">
					<div class="panel-body" style="height: 450px;">
						<br>
	<h2>Detail coach</h2>
	<h4>Name : ${coach.emailOfCoach} </h4>
	<p>Họ tên:<p>${coach.emailOfCoach}</p>
	<p>Họ tên:<p>${coach.password}</p>
	<p>Họ tên:<p>${coach.name}</p>
	<p>Họ tên:<p>${coach.department}
	<p>Họ tên:<p>${coach.telephone}</p>
	<p>Họ tên:<p>${coach.status}</p>
	
	<br />
	<br />
	<button onclick="window.location.href = '<c:url value='/list' />'">Danh
		sách thành viên</button>
		</div>
		</div>
		</div>
		</div>
		</div>
		
</body>
</html>