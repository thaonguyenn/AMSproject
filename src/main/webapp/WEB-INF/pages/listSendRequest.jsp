<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Student Manager</title>
<style>
.divboder {
	border: 2px solid red;
}

div.fontText {
	font-size: 16px;
	border-style: inset;
}

p.fontp {
	font-size: 20px;
	color: black;
}

button.btn-primary {
	font-size: 16px;
}

button.btn-danger {
	font-size: 16px;
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
									<li><a href="#"><i class="fa fa-user-secret"
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
		<br> <br> <br>

		<div class="container">
			<form:form method="post" modelAttribute="transaction"
				action="./sendContract">
				<div class="col-sm-6">
					<div class="col-ms-6" style="margin-top: 100px";>
						<div class="row">
							<div class="col-md-10 col-md-offset-1">
								<div class="panel panel-default panel-table">
									<div class="panel-heading">
										<div class="row">
											<div class="col col-xs-6">
												<p class="panel-title">Send Request Create Contract</p>
											</div>
											<div class="col col-xs-6 text-right"></div>
										</div>
									</div>
									<div class="panel-body">
										<table class="table table-striped table-bordered table-list">
											<thead>
												<tr>
													<th class="hidden-xs" style="text-align: left;">ID
														Student</th>
													<th>Date Transaction</th>
													<th style="text-align: center;"></th>
													<th style="text-align: center;"></th>
											</thead>
											<tbody>
												<c:forEach items="${transactions}" var="transaction">
													<tr>
														<td>${transaction.student.idStudent}</td>
														<td>${transaction.dateTrans}</td>
														<td align="center"><button type="submit"
																name="transaction" value="${transaction.idTrans}"
																class="btn btn-primary">Send Request</button></td>
														<td align="center"><button type="submit"
																class="btn btn-danger">Reject</button></td>
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
				</div>

			</form:form>
			<br> <br> <br> <br> <br> <br> <br>
			<form method="get" action="./sendCertificate">

				<div class="col-sm-6 fontText">
					
						<p class="fontp">Send Request Create Certificate</p>
						<label>ID Student</label> <input type="text" class="idStudent"
							id="idStudent" /> <br> <br> <label>Name
							Certificate</label> <input type="text" class="nameCertificate"
							id="nameCertificate" /> <br> <br> <label>Classification</label>
						<select>
							<option value="CL001">AMS-Java-Classification</option>
							<option value="CL002">AMS-C++-Classification</option>
						</select> <br>
						<br>
						<br>
						<br>
						<center>
							<button type="submit" class="btn btn-primary">Send
								Request</button>
						</center>
					
				</div>
			</form>
			<br> <br> <br> <br> <br> <br> <br>
			<br>

		</div>
	</div>

	<br>
	<br>
	<br>
	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>