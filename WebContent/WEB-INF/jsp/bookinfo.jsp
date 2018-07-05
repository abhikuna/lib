<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<body>
	</head>
<body background="logs.svg">
	<h2 style="color: brown; font-size: 34px">Books Data:</h2>

	<table>
		<tr>
			<th>Book id</th>
			<th>Book name</th>
			<th>Category</th>
			<th>Author</th>
			<th>Status</th>
			<th>Quantity</th>
		</tr>
		<c:forEach items="${booklist}" var="b" >
			<tr>
 				<td><a href="/sintecone/bookdetails?Id=${b.bId} "style="text-decoration: none" >${b.bId}</a></td>
 				
  				<td>${b.book}</td>
				<td>${b.category}</td>
				<td>${b.authour}</td>
				<td>${b.status}</td>
				<td>${b.quantity}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>