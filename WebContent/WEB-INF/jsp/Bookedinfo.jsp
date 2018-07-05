<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<style>
table {
	font-family: cursive, sans-serif;
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
	<h2 style="color: brown; font-size: 34px">Logs Data:</h2>

	<table>
		<tr>
			<th>User id</th>
			<th>User name</th>
			<th>Book id</th>
			<th>Book name</th>
			<th>Category</th>
			<th>Borrowed date</th>
			<th>Due date</th>
			<th>Returned Date</th>
		</tr>
		<c:forEach items="${bookedlist}" var="b">
			<tr>
				<td>${b.userid}</td>
				<td>${b.username}</td>
				<td>${b.bId}</td>
				<td>${b.book}</td>
				<td>${b.category}</td>
				<td>${b.borroweddate}</td>
				<td>${b.duedate}</td>
				<td>${b.returneddate}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>