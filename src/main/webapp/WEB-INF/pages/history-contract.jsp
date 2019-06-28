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
			<h3 class="text-center">LIST OF CONTRACT</h3>
			<!-- Search form -->
			<div class="input-group" style="margin-bottom:10px;width:300px;margin-left:800px">
				<input type="text" class="form-control" placeholder="Search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
				</div>
				<form action="historycontract" method="post">
					<table id="example" class="table table-striped table-bordered"
						style="width: 100%;margin-top:10px">
						<thead>
							<tr>
								<th>Name</th>
								<th>Coach</th>
								<th>Student</th>
								<th>Date start</th>
								<th>Date end</th>
								<th>Detail</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listContract}" var="list">
								<tr>
									<td>${list.nameContract}</td>
									<td>${list.coach.name}</td>
									<td>${list.student.fullName}</td>
									<td>${list.startTime}</td>
									<td>${list.endTime}</td>
									<td align="center"><button type="button"
											class="btn btn-primary btn-sm" data-toggle="modal"
											data-target="#myModal" value="${list.idContract}">
											<em class="fa fa-info"></em>
										</button></td>
									<!-- Information Contract -->
									<div class="modal fade" id="myModal" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header" style="color: #0059b3">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">Information Contract</h4>
												</div>
												<div class="modal-body">
													<h3 style="text-align: center">AMS-JAVA-DEVELOPER
														CONTRACT</h3>
													<p>Coach: Nguyen Minh Thu</p>
													<p>Email: thunguyenit0508@gmail.com</p>
													<p>Student: Nguyen Thanh Nhan</p>
													<p>Email: nhantz@gmail.com</p>
													<p>Date start: 12-03-2018</p>
													<p>Date end : 16-07-2018</p>
													<p>Description:</p>
													<ul>
														<li>Training language Java</li>
														<li>Learning knowledge about Spring MVC</li>
													</ul>

												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary"
														data-dismiss="modal">Exit</button>
												</div>
											</div>

										</div>
									</div>
								</tr>
							</c:forEach>












						</tbody>
					</table>

				</form>

			</div>
		</div>
</body>
</html>