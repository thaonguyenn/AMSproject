<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers</title>
<link href="./css/bootstrap.css" rel="stylesheet"></link>
<script src="./js/jquery-3.1.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" media="screen" href="./css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="./js/jquery-3.1.1.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./chart.js/Chart.min.js"></script>
<script type="text/javascript" src="./js/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/4.11.4/standard/ckeditor.js"></script>
<script>    CKEDITOR.replace( 'ten');</script>

<style type="text/css">
#menu ul {
  background:none;
  width: 237px;
  padding: 0;
  list-style-type: none;
  text-align: left;
}
#menu li {
  width: auto;
  height: 40px;
  line-height: 40px;
  border-bottom: 1px solid white;
  padding: 0 2em;
}
#menu li a {
  text-decoration: none;
  color:white;
  font-weight: bold;
  display: block;
}
#menu li:hover {
  background: #CDE2CD;
}
.panel-table .panel-body {  
padding:0;
}
.panel-table .panel-body .table-bordered {  
border-style: none; 
margin:0;
}
.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type { 
text-align:center;  width: 100px;}.panel-table .panel-body .table-bordered > thead > tr > th:last-of-type, .panel-table .panel-body .table-bordered > tbody > tr > td:last-of-type {  
border-right: 0px;
}
.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type, .panel-table .panel-body .table-bordered > tbody > tr > td:first-of-type {  
border-left: 0px;
}
.panel-table .panel-body .table-bordered > tbody > tr:first-of-type > td { 
border-bottom: 0px;
}
.panel-table .panel-body .table-bordered > thead > tr:first-of-type > th { 
border-top: 0px;
}
.panel-table .panel-footer .pagination {    
margin:0;
}
.panel-table .panel-footer .col {   
line-height: 34px;  
height: 34px;
}
.panel-table .panel-heading .col h3 {   
line-height: 30px;  
height: 30px;
}
.panel-table .panel-body .table-bordered > tbody > tr > td {   
line-height: 34px;
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
				<img alt="" src="./images/column.gif"
					style="position: absolute; top: 82px; left: -13px;">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><img alt="" src="./images/admin.ico"
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
		style="position: absolute; top: 82px; left: -20px;color:white">
		<div id="menu">
			<ul>
				<li><a href="./Coach.html">Manage Coach</a></li>
				<li><a href="./Users.html">Manage Student</a></li>
				<li><a href="./Contract.html">Manage Contract</a></li>
				<li><a href="./Users.html">Manage Certificate</a></li>
				<li><a href="./Users.html">Manage Request</a></li>
			</ul>
		</div>
	</div>

<div class="col-sm-9" style="position: absolute; top: 85px; left: 225px; width: 85%;">
<nav aria-label="breadcrumb" role="navigation">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="./index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="./Coach.html">Contract</a></li>
    <li class="breadcrumb-item active" aria-current="page">Add Contract</li>
  </ol>
</nav>
</div>

<div class="container" style="position: absolute;left: 450px;width: 50%;"> 
 <div class="row"> 
  
  <div class="col-md-10 col-md-offset-1"> 
   <div class="panel panel-default panel-table"> 
    <div class="panel-heading"> 
     <div class="row"> 
      
       <h3 class="panel-title"style="font-size:26px;text-align:center">EDIT CONTRACT</h3> 
     
      
     </div> 
    </div> 
    <div class="panel-body" style="height: 380px;">
    <br> 
     <!-- <p style="position: absolute;left: 30px;">Full name:</p> <input type="text" style="position: absolute;left: 150px; width: 350px;" autofocus><br><br> 
     <p style="position: absolute;left: 30px;">Date of birth:</p> <input type="date" style="position: absolute;left: 150px; width: 150px;">
     <p style="position: absolute;left: 320px;">Sex:</p> <input type="radio" style="position: absolute;left: 340px; width: 50px;" value="Male" checked="checked"><p style="position: absolute;left: 380px;">Male</p><input type="radio" style="position: absolute;left: 410px; width: 50px;" value="Female"><p style="position: absolute;left: 450px;">Female</p><br><br>
     <p style="position: absolute;left: 30px;">Account:</p> <input type="text" style="position: absolute;left: 150px; width: 150px;">
     <p style="position: absolute;left: 320px;">Password:</p> <input type="password" style="position: absolute;left: 390px; width: 110px;"><br><br> 
     <p style="position: absolute;left: 30px;">Email:</p> <input type="email" style="position: absolute;left: 150px; width: 350px;"><br><br> 
     <p style="position: absolute;left: 30px;">Phone:</p> <input type="number" style="position: absolute;left: 150px; width: 350px;"><br><br> 
     <p style="position: absolute;left: 30px;">Hobbies:</p> <textarea rows="" cols="" style="position: absolute;left: 150px; width: 350px;"></textarea>
    </div>  -->
     <p style="position: absolute;left: 30px;">Title:</p> <input type="text" style="position: absolute;left: 150px; width: 350px;" autofocus><br><br> 
     <p style="position: absolute;left: 30px;">Coach:</p> <input type="text" style="position: absolute;left: 150px; width: 350px;"value="Nguyen Minh Thu " disabled><br><br> 
     <p style="position: absolute;left: 30px;">Email-coach:</p>  <input type="text" style="position: absolute;left: 150px; width: 350px;"><br><br>
     <p style="position: absolute;left: 30px;">Student:</p> <input type="text" style="position: absolute;left: 150px; width: 350px;" value="Nguyen Thanh Nhan" disabled><br><br>
     <p style="position: absolute;left: 30px;">Email-student:</p>  <input type="text" style="position: absolute;left: 150px; width: 350px;"><br><br>
     <p style="position: absolute;left: 30px;">Date start:</p>  <input type="date" style="position: absolute;left: 150px; width: 350px;"><br><br>
   	  <p style="position: absolute;left: 30px;">Date end:</p>  <input type="date" style="position: absolute;left: 150px; width: 350px;"><br><br>
   	  <p style="position: absolute;left: 30px;">Description:</p> <textarea name="ten" id="ten" style="position: absolute;left: 150px; width: 350px"></textarea>
   	
   	  <br><br>
    </div> 
    <div class="panel-footer"> 
     <div class="row"  style="text-align:right;margin-right:5px"> 
      <button type="button" class="btn btn-sm btn-default btn-create">Cancel</button> 
       <button type="button" class="btn btn-sm btn-primary btn-create">Save</button> 
     </div> 
    </div> 
   </div> 
  </div> 
 </div>
</div>
<footer style="background-color: black;position:absolute; left: 238px; top: 677px; color: white;" class = "col-sm-10" >
<b>ABC company (2017)</b><p style="text-align: right;">Design by group 9 ...
</footer>
</body>
</html>