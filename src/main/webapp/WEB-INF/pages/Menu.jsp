<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/css/menu.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" type="text/javascript"></script> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/c34fecfbb5.js"></script>

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
							<img style="width: 120px" alt="" src="./images/logoAMS.png">
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
	
	
</div>

</body>
</html>