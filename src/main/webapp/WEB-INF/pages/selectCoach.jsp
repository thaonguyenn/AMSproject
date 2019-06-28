<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
	src="${pageContext.request.contextPath}/styles/js/jquery-3.1.1.min.js"
	type="text/javascript"></script>
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/listCoach.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/menu.css">
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,900')
	;
</style>
</head>
<script type="text/javascript">
$(function() {
var tested = ${tested};
		if (tested == true) {
			var selectBt = document.getElementsByName("selectButton");
			var i;
			for (i = 0; i < selectBt.length; i++) {
				if (selectBt[i].type == "button") {
					selectBt[i].disabled = false;
				}
				//popup
			}
		} else {
			showMessage();
		}
	});
	</script>
	<script type="text/javascript">
	function showMessage() {
          document.getElementById("showDoTest").style.display = "block";
	}
	</script>
	<script type="text/javascript">
	function Redirect() {
		var tested = ${tested};
		if (tested == true) {
			 document.getElementById("redirect").href = './feedback';		
		}
		else{
			 document.getElementById("redirect").href = './onlineTest';	
		}
		
	}
	</script>
	<script type="text/javascript">
	function addTransactions(id) {
		var urla = "./createTransactions?idCoach="+id;
		$.ajax({
			url : urla,
			type : "GET",
			dataType : "xml",
			cache : false
		});
		 document.getElementById("myModal").style.display = "block";		
	}	
	</script>
<body>
<div class="modal" tabindex="-1" role="dialog"id="showDoTest" hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        </button>
      </div>
      <div class="modal-body">
        <p style="color: red;font-size: 18px;">You must do test before select coach.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary"onclick="window.location.href = '<c:url value='/list' />'" >Go to do test online...</button>
      </div>
    </div>
  </div>
</div>

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
									src="<c:url value="/styles/images/logoAMS.png"/>">
							</div>
							<nav class="navbar">
								<ul class="navbar_menu">
									<li><a id="redirect" href="#" onclick="Redirect();"><i class="fa fa-file-text"
											aria-hidden="true" ></i> Online Test</a></li>
									<li><a href="#"><i class="fa fa-user-secret"
											aria-hidden="true"></i> Select Coach</a></li>
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div
			style="font-family: 'Titillium Web', sans-serif; text-align: center; color: black; font-size: 40px;">
			List of Coach</div>
		<br> <br>

		<div class="row">
			<div class="information">
				<c:forEach items="${coachs}" var="coach">
					<div class="col-sm-4"
						style="border: 1px solid #ccc6c2; height: 250px; box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);">
						<center>
							<p
								style="font-family: 'Titillium Web', sans-serif; font-size: 25px;"
								class="infor">Information</p>
						</center>
						<div class="col-sm-4">
							<img alt="" src="<c:url value="/styles/images/gv04.jpg"/>"
								width="140px;" height="180px;" style="margin-top: 5px;">
						</div>
						<div class="col-sm-8" style="height: 190px;">

							<h4
								style="color: black; font-size: 16px; font-family: 'Titillium Web', sans-serif; margin-left: 40px;">
								${coach.idCoach}</h4>
							<h4
								style="color: black; font-size: 16px; font-family: 'Titillium Web', sans-serif; margin-left: 40px;">
								${coach.emailOfCoach}</h4>
							<h4
								style="color: black; font-size: 16px; font-family: 'Titillium Web', sans-serif; margin-left: 40px;">
								${coach.name}</h4>
							<h4
								style="color: black; font-size: 16px; font-family: 'Titillium Web', sans-serif; margin-left: 40px;">
								${coach.department}</h4>
							<h4
								style="color: black; font-size: 16px; font-family: 'Titillium Web', sans-serif; margin-left: 40px;">
								${coach.telephone}</h4>

							<br>							
							<button type="button" class="btn btn-primary"data-toggle="modal" data-target="#myModal"
								style="margin-left: 60px; margin-top: -15px;"
								disabled="disabled" id="selectCoach" name="selectButton" onclick="addTransactions('${coach.idCoach}')"> Select Coach</button>
								  <div class="modal fade" id="myModal" role="dialog" hidden="true">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Message</h4>
        </div>
        <div class="modal-body">
          <p style="color: red;">You selected coach successfully ! You wait to create contract.</p>
        </div>
      </div>
      
    </div>
  </div>
  

						</div>

					</div>

				</c:forEach>
			</div>

		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>