<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="${pageContext.request.contextPath}/styles/js/jquery-3.1.1.min.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/styles/js/Register.js" type="text/javascript"></script> 
<title>Insert title here</title>

<style>


.container{
margin-top:30px;
}
*[role="form"] {
	margin-top:10px;
	max-width: 530px;
	padding: 15px;
	margin: 0 auto;
	border-radius: 0.3em;
	background-color: #f2f2f2;
}

*[role="form"] h2 {
	font-family: 'Open Sans', sans-serif;
	font-size: 30px;
	font-weight: 600;
	color: #000000;
	margin-top: 2%;
	text-align: center;
	text-transform: uppercase;
	letter-spacing: 4px;
}
.form-control{
margin-bottom:-6px;
}
.form-button{
margin-right:10px;
}

</style>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" role="form">
			<h2>Register</h2>
			<div class="form-group">
				<label for="Name" class="col-sm-3 control-label">Name
				</label>
				<div class="col-sm-9">
					<input type="text" id="Name" placeholder=" Name"
						class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email* </label>
				<div class="col-sm-9">
					<input type="text" id="email" placeholder="Email"
						class="form-control" name="email">
					<div class="status" id="errorEmail"></div>

				</div>
				
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Password*</label>
				<div class="col-sm-9">
					<input type="password" id="pass" placeholder="Password"
						class="form-control">
						<div class="status" id = "errorPass"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Confirm
					Password*</label>
				<div class="col-sm-9">
					<input type="password" id="repass" placeholder="Confirm Password"
						class="form-control">
					<br>
					<div class="status" id ="errorRepass"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Date
					of Birth*</label>
				<div class="col-sm-9">
					<input type="date" id="birthDate" class="form-control">
				</div>
			</div>

			<div class="form-group">
                    <label class="control-label col-sm-3">Language Program</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-3">
                                
                                   <label class="checkbox-inline"><input type="checkbox" value="">Java</label>

                            </div>
                            <div class="col-sm-3">
                                <label class="checkbox-inline"><input type="checkbox" value="">C++</label>
                            </div>
                            <div class="col-sm-3">
                                
                                   <label class="checkbox-inline"><input type="checkbox" value="">Python</label>
                                
                            </div>
                            <div class="col-sm-3">
                                
                                    <label class="checkbox-inline"><input type="checkbox" value="">Other</label>
                                
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
				
				
			
			<div class="form-group">
				<label for="Programming" class="col-sm-3 control-label">Programming:</label>
				<div class="col-sm-9">

					<select class="form-control input-sm" style="height:35px">
						<option>--Select language --</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
					</select> 
					
					 
				</div>
				</div>
				
				<div class="form-group">
				<label for="TOEFL score" class="col-sm-3 control-label">TOEFL score :
					</label>
				<div class="col-sm-9">
					<input type="text" id="toeflscore" class="form-control" maxlength="28" onkeyup="validatephone(this);">
				</div>
			</div>
			
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Soft skills :
					</label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="2"></textarea>
				</div>
			</div>




			
			<!-- /.form-group -->
			
			  <div class="form-group">
			  <div class="col-sm-offset-8 col-sm-10">
                <button type="submit" class="btn btn-danger">Cancel</button>
                <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
		</form>
		<!-- /form -->
	</div>
	<!-- ./container -->
</body>
</html>