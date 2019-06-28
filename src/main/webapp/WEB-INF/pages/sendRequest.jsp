<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/RegisterCoach9.css">
<script
	src="${pageContext.request.contextPath}/styles/js/jquery-3.1.1.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/styles/js/sendRequestJS.js"
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
<link href="https://fonts.googleapis.com/css?family=Titillium+Web"
	rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Send Request</h1>
	<form:form method="post" modelAttribute="request">
		<label>Name of Coach</label>
		<form:input path="emailofCoach" type="text" id="emailOfCoach"
			class="emailOfCoach" />
		<center>
			<p id="errorEmail" class="errorEmail"></p>
		</center>
		<label>Name of Student</label>
		<form:input path="emailofStudent" type="text" id="emailOfStudent"
			class="emailOfStudent" />
		<center>
			<p id="errorEmail" class="errorEmail"></p>
		</center>
		
		<form:select path="nameRequest">
			<option>Create Contract</option>
			<option>Create Certificate</option>
		</form:select>
		<input type="submit" values="Send" />
	</form:form>

</body>
</html>