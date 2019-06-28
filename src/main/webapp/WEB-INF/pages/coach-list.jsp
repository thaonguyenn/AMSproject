<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Coach Manager</title>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<style>
tr:first-child {
	font-weight: bold;
	background-color: #C6C9C4;
}
</style>

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

				<li><a href="" style="color: white;">Manage Coach</a></li>
				<li><a href=""style="color: white;">Manage Student</a></li>
				<li><a href=""style="color: white;">Manage Contract</a></li>
				<li><a href=""style="color: white;">Manage Certificate</a></li>
				<li><a href=""style="color: white;">Manage Request</a></li>


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

	<div class="container" style="position: absolute; left: 190px;">
		<div class="row">
			<h1 class="text-center">Manage Coach</h1>
			<input id="myInput" type="text" placeholder="Search.." style="margin-left: 760px;width: 300px;border: 1px solid #ccc6c2;height: 30px; ">
			<br><br>
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">List of Coach</h3>
							</div>
							<div class="col col-xs-6 text-right">
								<button type="button" class="btn btn-sm btn-primary btn-create"
									onclick="window.location.href =<c:url value='/createCoach' />">Add new</button>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									<th class="hidden-xs" style="text-align: left;">IDCoach</th>
									<th>Email</th>
									<th>Password</th>
									<th>Name</th>
									<th>Department</th>
									<th>Telephone</th>
									
									<th style="text-align: center;"><em class="fa fa-cog"></em>
									</th>
								</tr>
							</thead>
							<tbody id = "myTable">
								
								<c:forEach items="${coachs}" var="coach">
								<tr>
									<td class="hidden-xs">${coach.idCoach}</td>
									<td>${coach.emailOfCoach}</td>
									<td>${coach.password}</td>
									<td>${coach.name}</td>
									<td>${coach.department}</td>
									<td>${coach.telephone}</td>
									
									<td align="center"><a href=""
										class="btn btn-default"href="<c:url value='/edit-${coach.idCoach}-coach'/>"><em class="fa fa-pencil"></em></a> <a
										class="btn btn-danger" href="<c:url value='/delete-${coach.idCoach}-coach'/>"><em class="fa fa-trash"></em></a><a
										class="btn btn-default"href="<c:url value='/detail-${coach.idCoach}-coach'/>"><em class="fa fa-info"></em></a></td>
								</tr>
								</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- <h2>Danh sách Coach</h2>
	<br>
	<br>
	<p style="background-color: green">Student List (${total})</p>
	<button onclick="window.location.href =<c:url value='/' />">New</button>


	<table>
		<tr>
			<td>Email</td>
			<td>Name</td>
			<td>Department</td>
			<td>Phone</td>
			<td></td>
		</tr>
		<c:forEach items="${coachs}" var="coach">
			<tr>
				<td>${coach.emailOfCoach}</td>
				<td>${coach.name}</td>
				<td>${coach.department}</td>
				<td>${coach.telephone}</td>

				<td>
					<button type="button"
						onclick="window.location.href = '<c:url value='/delete-${coach.emailOfCoach}-coach'/>'">Delete</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br />
	 -->
</body>
</html>