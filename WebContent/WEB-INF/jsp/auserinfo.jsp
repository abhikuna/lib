

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<head>
<style>
table {
	font-family: cursive;
	font-size: 18px;
	border-collapse: collapse;
	color: black;
	width: 100%;
}

td, th {
	border: 3px solid #dddddd;
	text-align: left;
	padding: 14px;
}


</style>
</head>

<body >
	<img src="">
	<h2 style="color: brown; font-size: 34px">User Info:</h2>
	<table>
	
		<tr>

			<th>User id</th>
			<th>User name</th>
			<th>Password</th>
			<th>Gender</th>
			<th>DOB</th>
			<th>Country</th>
		</tr>
		<c:forEach items="${userlist}" var="s">
		
			<tr>
				<td>${s.userId}</td>
				<td>${s.username}</td>
				<td>${s.password}</td>
				<td>${s.gender}</td>
				<td>${s.dob}</td>
				<td>${s.country}</td>

			</tr>
		</c:forEach>
	</table>
</body>
</html>