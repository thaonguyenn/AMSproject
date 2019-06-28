<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coach</title>
<link href="./css/bootstrap.css" rel="stylesheet"></link>
<script src="./js/jquery-3.1.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" media="screen" href="./css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.bootstrap.min.css">

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
	border-bottom: 1px solid white;
	padding: 0 2em;
}

#menu li a {
	text-decoration: none;
	color: white;
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
th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        width: 600px;
        margin: 0 auto;
        
       
    }
th,td{
margin-right:1px
}

 
    tr { height: 50px; }
</style>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
	<script>
	 $(document).ready(function() {
	        $('#example').DataTable({
	            dom: 'Bfrtip',
	            buttons: [
	            	'copy', 'csv', 'excel', 'pdf', 'print'
	            ]
	        });
	    });
</script>
</head>
<body style="font-family: 'Raleway', sans-serif;">
	<script type="text/javascript">
		function add() {
			window.location = './Add-Contract.html';
		}
		function edit() {
			window.location = './Edit-Contract.html';
		}
	</script>
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
						href="./index.html"><img alt="" src="./images/ams-img.png"
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
		style="position: absolute; top: 82px; left: -20px;">
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

	<div class="col-sm-9"
		style="position: absolute; top: 85px; left: 225px; width: 100%;">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="./index.html">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Coach</li>
			</ol>
		</nav>
	</div>

	<div class="container">
	<h1 class="text-center">Management Contract</h1>
	<div class="col col-xs-6 text-right" style="margin-bottom:16px">
								<button type="button" class="btn btn-sm btn-primary btn-create"
									onclick="add();">Add new</button>
	</div>
		<table id="example" class="table table-striped table-bordered" style="width:100%" data-page-length='5'>
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>$433,060</td>
            </tr>
            <tr>
                <td>Airi Satou</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>33</td>
                <td>2008/11/28</td>
                <td>$162,700</td>
            </tr>
            <tr>
                <td>Brielle Williamson</td>
                <td>Integration Specialist</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>$372,000</td>
            </tr>
            <tr>
                <td>Herrod Chandler</td>
                <td>Sales Assistant</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>$137,500</td>
            </tr>
            <tr>
                <td>Rhona Davidson</td>
                <td>Integration Specialist</td>
                <td>Tokyo</td>
                <td>55</td>
                <td>2010/10/14</td>
                <td>$327,900</td>
            </tr>
            <tr>
                <td>Colleen Hurst</td>
                <td>Javascript Developer</td>
                <td>San Francisco</td>
                <td>39</td>
                <td>2009/09/15</td>
                <td>$205,500</td>
            </tr>
            <tr>
                <td>Sonya Frost</td>
                <td>Software Engineer</td>
                <td>Edinburgh</td>
                <td>23</td>
                <td>2008/12/13</td>
                <td>$103,600</td>
            </tr>
            </table>
		</div>
	
	<footer
		style="background-color: black; position: absolute; left: 238px; top: 677px; color: white;"
		class="col-sm-10">
		<b>ABC company (2017)</b>
		<p style="text-align: right;">Design by group 9 ...
	</footer>
	
	
</body>
</html>