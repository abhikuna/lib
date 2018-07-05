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
	<h2 style="color: brown; font-size: 34px">Books by Name:</h2>
	<table>
		<tr>

			<th>User Id</th>
			<th>User Name</th>
			<th>BookId</th>
			<th>Book Name</th>
			<th>Category</th>
			<th>Borrowed Date</th>
			<th>Due Date</th>
		</tr>
		<c:forEach items="${list}" var="b">
			<tr>
				<td>${b.userid}</td>
				<td>${b.username}</td>
				<td>${b.bId}</td>
				<td>${b.book}</td>
				<td>${b.category}</td>
				<td>${b.borroweddate}</td>
				<td>${b.duedate}</td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>