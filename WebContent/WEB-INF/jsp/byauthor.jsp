<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<img src="">
	<h2 style="color: brown; font-size: 34px">Books by Name:</h2>
	<table>
		<tr>

			<th>BookId</th>
			<th>Book Name</th>
			<th>Category</th>
			<th>Author</th>
			<th>Status</th>
			<th>Country</th>
			
		</tr>
		<c:forEach items="${list}" var="b">
			<tr>
				<td>${b.bId}</td>
				<td>${b.book}</td>
				<td>${b.category}</td>
				<td>${b.authour}</td>
				<td>${b.status}</td>
				<td>${b.country}</td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>